# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/labels/:id', type: :request do
  subject(:response) { get "/labels/#{id}" }

  let(:id) { 42 }

  let(:expected_body) do
    '{"id":"42","name":"premium","color":"green"}'
  end

  let(:api_version) { '2018-12-01' }

  it do
    header 'MorpheusVersion', api_version
    expect(response.body).to eq expected_body
  end

  context 'with previous version of API (2018-11-01)' do
    let(:expected_body) do
      '{"id":"42","name":"premium","kind":"premium"}'
    end

    it { expect(response.body).to eq expected_body }
  end
end
