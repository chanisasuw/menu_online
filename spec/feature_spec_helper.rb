# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'
# require 'database_cleaner'

# DatabaseCleaner.strategy = :truncation
Capybara.current_driver = :selenium

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :mocha
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false

  config.before(:each) do
    ActionMailer::Base.deliveries = []
    # DatabaseCleaner.clean
  end

  config.before(:each) { FactoryGirl.reload }
  config.after(:each) {}
  config.after(:suite) { DatabaseCleaner.clean }
end
