require_relative 'config/environment'
require 'stackprof'

def profile_new_action
  StackProf.run(out: '/tmp/stackprof.dump') do
    controller = SessionsController.new
    controller.new
  end
end

profile_new_action