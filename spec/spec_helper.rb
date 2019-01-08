require "bundler/setup"
require "zoho_inventory"
require 'webmock/rspec'

PROJECT_ROOT = ::File.expand_path("../", __FILE__)

Dir["#{PROJECT_ROOT}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # Disable all real network connections
  WebMock.disable_net_connect!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
