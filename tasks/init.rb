#!/opt/puppetlabs/puppet/bin/ruby

require 'puppet'
require 'json'

def get(type, name)
  output_instances = []
  if name.nil?
    opts = { name: name } unless name.nil?
    provider = Puppet::Type.type(type.to_sym)
    provider.instances.each do |instance|
      output_instances.push(instance.to_hash)
    end
  else
    opts = { name: name }
    instance = Puppet::Type.type(type.to_sym).new(opts)
    output_instances.push(instance.to_hash)
  end

  result = output_instances.to_json
  { _output: result }
end

params = JSON.parse(STDIN.read)
type = params['type']
name = params['name']

begin
  result = get(type, name)
  puts result.to_json
  exit 0
rescue Puppet::Error => e
  puts({ status: 'failure', error: e.message }.to_json)
  exit 1
end
