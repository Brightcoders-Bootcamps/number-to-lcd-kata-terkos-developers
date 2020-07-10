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
      zero = [[' ', '_', ' '], ['|', ' ', '|'], ['|', '_', '|']]
      expect(number_zero.display_lcd).to eq(zero)
    end
  end
end

RSpec.describe 'NumberOne' do
  let(:number_zero) {ConvertNumber.new(1)}
  describe '#one' do
    it 'Will be one' do
      one = [[' ', ' ', ' '], ['|', ' ', ' '], ['|', ' ', ' ']]
      expect(number_zero.display_lcd).to eq(one)
    end
  end
end

#   _  _     _  _  _  _  _  
# | _| _||_||_ |_   || ||_|  
# ||_  _|  | _||_|  ||_| _| 

#  _ 
# | |
# |_|     =   0 
