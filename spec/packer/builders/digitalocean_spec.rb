# Encoding: utf-8
require 'spec_helper'

RSpec.describe Packer::Builder::DigitalOcean do
  let(:builder) { Packer::Builder.get_builder(Packer::Builder::DIGITALOCEAN) }

  describe '#initialize' do
    it 'has a type of DigitalOcean' do
      expect(builder.data['type']).to eq(Packer::Builder::DIGITALOCEAN)
    end

    it 'requires source_path' do
      expect { builder.validate }.to raise_error(Packer::DataObject::DataValidationError)
      builder.api_token 'some api token'
      expect { builder.validate }.not_to raise_error
    end
  end
end
