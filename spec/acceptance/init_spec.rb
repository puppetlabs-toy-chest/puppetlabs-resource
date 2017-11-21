# run a test task
require 'spec_helper_acceptance'

describe 'resource task', if: puppet_version =~ %r{(5\.\d\.\d)} && !UNSUPPORTED_PLATFORMS.include?(fact('operatingsystem')) do
  describe 'resource' do
    it 'get a single instance' do
      result = run_task(task_name: 'resource', params: 'type=user name=root')
      expect_multiple_regexes(result: result, regexes: [%r{name.*:.*root}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
    end
    it 'get all instances' do
      result = run_task(task_name: 'resource', params: 'type=user')
      expect_multiple_regexes(result: result, regexes: [%r{.*name.*root}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
    end
  end
end
