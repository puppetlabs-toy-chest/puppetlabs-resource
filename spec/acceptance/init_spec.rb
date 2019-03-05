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

  describe 'resource' do
    it 'get a single instance' do
      result = task_run('resource', 'type' => 'user', 'name' => username.to_s)

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']['_output']).to match %r{name.*:.*"#{username}"}
    end
    it 'get all instances' do
      result = task_run('resource', 'type' => 'user')

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']['_output']).to match %r{name.*:.*"#{username}"}
    end
  end
end
