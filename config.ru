# frozen_string_literal: true

require_relative 'boot.rb'
require 'morpheus/application'

run Morpheus::Application.freeze.app
