require 'e_m_typographer'

describe EMTypographer do
  describe '.apply' do
    it 'evaluates text and returns parsed text' do
      expect(EMTypographer.apply('supatext')).to eq('<p>supatext</p>')
    end
  end
end