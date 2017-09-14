# run a test task
require 'spec_helper_acceptance'

describe 'resource task' do
  describe 'resource' do
    it 'get a single instance' do
      result = run_task(task_name: 'resource', params: 'type=user name=root')
      expect_multiple_regexes(result: result, regexes: [%r{\"name\":\"root\"}, %r{Job completed. 1/1 nodes succeeded}])
    end
    it 'get all instances' do
      result = run_task(task_name: 'resource', params: 'type=user')
      expect_multiple_regexes(result: result, regexes: [%r{\"name\":\"root\"}, %r{Job completed. 1/1 nodes succeeded}])
    end
  end
end
