
class ConvertNumber
	attr_reader :number
  
  def initialize(number)
    @number = number
  end

  def number?
  	(number.to_i == 0) ? false : true
  end

  def display_lcd
    number_array = number.to_s.split("") # ["1", "2", "3"]
    
    number_array.each do |number_string|
      puts hash_value[number_string]
    end
  end

  def hash_value
    {
      "0" => zero,  
      "1" => uno,
      "2" => dos,
      "3" => tres,
      "4" => cuatro,
      "5" => cinco,
      "6" => seis, 
      "7" => siete,
      "8" => ocho,
      "9" => nueve
    }
  end 
    
  def zero
    " 
      ____
     |    |
     |    |
      ____
        
    "
  end

  def uno
    " 
      __
        |
        |
      _____"
  end

  def dos
    " 
      __
        |
      __
     |
      __"
  end

  def tres
    "
     ___
        |
     ---|
        |
     ____
    "
  end

  def cuatro
    "
     |   |
     |___|
         |
         |
    "
  end

  def cinco
    "
     ___
    |
     ---|
        |
     ____
    "
  end

  def seis
    "
     ___
    |   
    |---|
    |  |
    ___
    "
  end

  def siete
    "
     ___
        |
     ---|
        |
    "
  end

  def ocho
    "
     ___
    |  |
    ---|
    |  |
    ____
    "
  end

  def nueve
    "
     ___
    |    |
     ---|
        |
        |
    "
  end
end

a = ConvertNumber.new(1234)
a.display_lcd