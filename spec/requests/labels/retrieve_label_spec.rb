# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/labels/:id', type: :request do
  subject(:response) { get "/labels/#{id}" }

  let(:id) { 42 }

  let(:expected_body) do
    '{"id":"42","name":"premium","kind":"premium"}'
  end

  it { expect(response.body).to eq expected_body }
end
