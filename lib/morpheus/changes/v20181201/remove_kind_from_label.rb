# frozen_string_literal: true

require 'morpheus/abstract_version_change'

module Morpheus
  module Changes
    module V20181201
      class RemoveKindFromLabel < AbstractVersionChange
        def call(data)
          { **data, kind: data[:name] }
        end
      end
    end
  end
end
