require 'rspec'
require 'rack/test'
require 'webmock/rspec'
require 'omniauth/core'
require 'omniauth/test'
require 'omniauth-cas'

module OmniAuth::Cas::SpecHelpers
  def read_fixture_file(file)
    File.read(File.join(File.dirname(__FILE__), 'fixtures', file))
  end
end

RSpec.configure do |config|
  config.include WebMock::API
  config.include Rack::Test::Methods
  config.include OmniAuth::Cas::SpecHelpers
  config.extend  OmniAuth::Test::StrategyMacros, :type => :strategy
end
