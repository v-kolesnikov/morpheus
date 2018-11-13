# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/', type: :request do
  subject(:response) { get '/' }

  it { expect(response.body).to eq 'I am your dream.' }
end
