require 'e_m_typographer'

describe EMTypographer do
  describe '.apply' do
    before do
      allow(EMTypographer).to receive(:send_typographer_post_request).and_return(Net::HTTPOK.new(1, 200, 'OK'))
    end

    it 'evaluates text and returns parsed text' do
      allow_any_instance_of(Net::HTTPOK).to receive(:body).and_return(%({"result": "<p>supatext</p>"}))

      expect(EMTypographer.apply('supatext')).to eq('<p>supatext</p>')
    end

    it 'evaluates text and returns nil' do
      allow_any_instance_of(Net::HTTPOK).to receive(:body).and_return(%({"status": "error"}))

      expect(EMTypographer.apply('supatext')).to be_nil
    end
  end
end