require 'bundler'
Bundler.setup

require "action_controller/railtie"

Rails.application = Class.new(Rails::Application)
# Rails.application.routes.append do |r|
#   r.match "/render_event_response", :as => :apotomo_event_path
# end

# This class is used as a dummy widget for testing

module Rails
  def root
    Pathname.new(__FILE__).dirname.dirname.dirname
  end
end

# require "action_controller/railtie"
# require 'rails'
# require "rails/test_help" # sets up ActionController::TestCase's @routes
# require 'action_view/template/handlers'
# require 'rspec/rails'

require 'apotomo'
require 'apotomo-animate'
