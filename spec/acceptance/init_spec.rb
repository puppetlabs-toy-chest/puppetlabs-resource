# run a test task
require 'spec_helper_acceptance'

username = if fact('operatingsystem') == 'windows'
             'Administrator'
           else
             'root'
           end

describe 'resource task' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  let(:module_path) { RSpec.configuration.module_path }
  let(:config) { { 'modulepath' => module_path } }
  let(:inventory) { hosts_to_inventory.merge('features' => ['puppet-agent']) }

  def run(params)
    run_task('resource', 'default', params, config: config, inventory: inventory)
  end

  describe 'resource' do
    it 'get a single instance' do
      result = run('type' => 'user', 'name' => username.to_s)
      expect(result.first['status']).to eq 'success'
    end
    it 'get all instances' do
      result = run('type' => 'user')
      expect(result.first['status']).to eq 'success'
    end
  end
end
