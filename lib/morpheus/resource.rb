# frozen_string_literal: true

require 'morpheus/version_changes'

module Morpheus
  module Resource
    def self.included(klass)
      klass.prepend ApplyVersion
    end

    module ApplyVersion
      def call(*, version:)
        changes = Morpheus::VersionChanges::VERSIONS.fetch(version) { [] }
        changes.reduce(super) do |resource, change|
          change.new.(resource)
        end
      end
    end

    def call(*)
      {}
    end
  end
end
