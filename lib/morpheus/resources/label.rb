# frozen_string_literal: true

require 'morpheus/resource'

module Morpheus
  module Resources
    class Label
      include Morpheus::Resource

      def call(id, _options = {})
        {
          id: id,
          name: 'premium',
          kind: 'premium'
        }
      end
    end
  end
end
