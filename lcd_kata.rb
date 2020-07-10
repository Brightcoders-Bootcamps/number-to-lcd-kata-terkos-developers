
class ConvertNumber
	attr_reader :number
  def initialize(number)
    @number = number
  end

  def number?
  	(number.to_i == 0) ? false : true
  end
  
  def display_lcd
  	case @number
    when 0 then [[' ', '_', ' '], ['|', ' ', '|'], ['|', '_', '|']]
    when 1 then [[' ', ' ', ' '], ['|', ' ', ' '], ['|', ' ', ' ']]
    end

  end
  
end