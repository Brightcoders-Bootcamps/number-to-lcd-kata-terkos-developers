require_relative '../lcd_kata'

RSpec.describe 'ConvertNumber' do
  let(:convert_number) { ConvertNumber.new('a')}
  describe '#number?' do
    it 'Will let me know if the given character is a number or not' do
      expect(convert_number.number?).to eq(false)
    end
  end
end

RSpec.describe 'NumberZero' do
  let(:number_zero) {ConvertNumber.new(0)}
  describe '#zero' do
    it 'Will be zero' do
      array_zero = [[' ', '_', ' '], ['|', ' ', '|'], ['|', '_', '|']]
      expect (display_lcd).to eq (array_zero)
    end
  end
end

#   _  _     _  _  _  _  _  
# | _| _||_||_ |_   || ||_|  
# ||_  _|  | _||_|  ||_| _| 

#  _ 
# | |
# |_|     =   0 
