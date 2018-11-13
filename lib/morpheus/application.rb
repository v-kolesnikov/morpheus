# frozen_string_literal: true

require 'roda'

module Morpheus
  class Application < ::Roda
    plugin :json
    plugin :placeholder_string_matchers
    plugin :request_headers

    route do |routes|
      routes.root do
        'I am your dream.'
      end

      def version
        request.headers['MorpheusVersion'] || '2018-11-01'
      end

      routes.on 'labels/:id' do |label_id|
        require 'morpheus/resources/label'
        Morpheus::Resources::Label.new.(label_id, version: version)
      end
    end
  end
end
