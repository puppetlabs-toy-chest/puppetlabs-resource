# run a test task
require 'spec_helper_acceptance'

username = if os[:family] == 'windows'
             'Administrator'
           else
             'root'
           end

describe 'resource task' do
  describe 'resource' do
    it 'get a single instance' do
      result = run_bolt_task('resource', 'type' => 'user', 'name' => username.to_s)

      expect(result['exit_code']).to be_zero
      expect(result['stderr']).to be_nil
      expect(result['result']['_output']).to match %r{name.*:.*"#{username}"}
    end
    it 'get all instances' do
      result = run_bolt_task('resource', 'type' => 'user')

      expect(result['exit_code']).to be_zero
      expect(result['stderr']).to be_nil
      expect(result['result']['_output']).to match %r{name.*:.*"#{username}"}
    end
  end
end
