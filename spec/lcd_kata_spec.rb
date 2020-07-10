require_relative '../lcd_kata'

RSpec.describe 'ConvertNumber' do
  let(:convert_number) { ConvertNumber.new('a')}
  describe '#number?' do
    it 'Will let me know if the given character is a number or not' do
      expect(convert_number.number?).to eq(false)
    end
  end

  describe '#display_lcd' do
    it 'Will be zero' do
      number_zero = ConvertNumber.new(0)
      zero = [[' ', '_', ' '], ['|', ' ', '|'], ['|', '_', '|']]
      expect(number_zero.display_lcd).to eq(zero)
    end
    
    it 'Will be one' do
      number_one = ConvertNumber.new(1)
      one = [[' ', ' ', ' '], ['|', ' ', ' '], ['|', ' ', ' ']]
      expect(number_one.display_lcd).to eq(one)
    end
  end
end

#   _  _     _  _  _  _  _  
# | _| _||_||_ |_   || ||_|  
# ||_  _|  | _||_|  ||_| _| 

#  _ 
# | |
# |_|     =   0 
