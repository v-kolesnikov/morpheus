# frozen_string_literal: true

require_relative '../boot.rb'
require 'morpheus/application'
require 'rack/test'

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.order = :random

  rack_app_mixin = Module.new do
    def app
      Morpheus::Application.app
    end
  end

  config.include rack_app_mixin, type: :request
  config.include Rack::Test::Methods, type: :request

  Kernel.srand config.seed
end
