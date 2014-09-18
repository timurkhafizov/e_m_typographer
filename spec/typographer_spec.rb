# encoding: utf-8

require 'spec_helper'
require 'e_m_typographer'

describe EMTypographer do
  describe '.apply' do
    context 'evaluates strings' do
      let(:success_response) { Net::HTTPOK.new(1, 200, 'OK') }

      before do
        allow(EMTypographer).to receive_messages(send_typographer_post_request: success_response)
      end

      it 'returns parsed text when http://mdash.ru responded with result text' do
        allow(success_response).to receive_messages(body: '{ "result": "<p>Вася был здесь</p>" }')

        expect(EMTypographer.apply('Вася был здесь')).to eq('<p>Вася был здесь</p>')
      end

      it 'returns nil when http://mdash.ru responded with error status' do
        allow(success_response).to receive_messages(body: '{ "status": "error" }')

        expect(EMTypographer.apply('Вася был здесь')).to be_nil
      end
    end

    it 'does not evaluate empty strings' do
      expect(EMTypographer.apply('')).to be_nil
    end

    it 'does not evaluate non-string and returns nil' do
      expect(EMTypographer.apply(['Вася был здесь'])).to be_nil
    end
  end
end
