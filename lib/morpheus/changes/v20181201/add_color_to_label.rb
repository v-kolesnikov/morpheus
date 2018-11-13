# frozen_string_literal: true

require 'morpheus/abstract_version_change'

module Morpheus
  module Changes
    module V20181201
      class AddColorToLabel < AbstractVersionChange
        def call(data)
          data.reject do |key, _|
            key == :color
          end
        end
      end
    end
  end
end
