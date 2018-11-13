# frozen_string_literal: true

Dir['./lib/morpheus/changes/**/*.rb'].each { |file| require file }

module Morpheus
  class VersionChanges
    VERSIONS = {
      '2018-11-01' => [
        Changes::V20181201::AddColorToLabel,
        Changes::V20181201::RemoveKindFromLabel
      ]
    }.freeze
  end
end
