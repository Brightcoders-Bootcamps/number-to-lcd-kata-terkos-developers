
RSpec.describe 'ConvertNumber' do
  let(:convert_number) { ConvertNumber.new }
  describe '#number?' do
    it 'Will let me know if the given character is a number or not' do
      convert_number.number? = 'a'
      expect(convert_number.number?).to eq(false)
    end
  end
end