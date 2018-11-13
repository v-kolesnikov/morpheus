# frozen_string_literal: true

require 'roda'

module Morpheus
  class Application < ::Roda
    plugin :json
    plugin :placeholder_string_matchers

    route do |routes|
      routes.root do
        'I am your dream.'
      end

      routes.on 'labels/:id' do |label_id|
        require 'morpheus/resources/label'
        Morpheus::Resources::Label.new.(label_id)
      end
    end
  end
end
