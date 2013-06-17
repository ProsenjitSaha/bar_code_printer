# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/core'

require 'rails/version'
require 'rspec/rails/view_rendering'
require 'rspec/rails/adapters'
require 'rspec/rails/matchers'
require 'rspec/rails/fixture_support'
require 'rspec/rails/mocks'
require 'rspec/rails/module_inclusion'
require 'rspec/rails/example'
require 'rspec/rails/vendor/capybara'
require 'rspec/rails/vendor/webrat'

require "factory_girl_rails"
require 'shoulda/matchers/integrations/rspec'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

RSpec.configure do |config|

end