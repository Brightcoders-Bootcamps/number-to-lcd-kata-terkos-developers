# frozen_string_literal: true

# This class is able to convert any
class ConvertNumber
  DIGITS = [
    [[' ', '_', ' '], ['|', ' ', '|'], ['|', '_', '|']],
    [[' ', ' ', ' '], ['|', ' ', ' '], ['|', ' ', ' ']],
    [[' ', '_', ' '], [' ', '_ ','|'], ['|', '_', ' ']],
    [[' ', '_', ' '], [' ', '_', '|'], [' ', '_', '|']],
    [[' ', ' ', ' '], ['|', '_', '|'], [' ', ' ', '|']],
    [[' ', '_', ' '], ['|', '_', ' '], [' ', '_', '|']],
    [[' ', '_', ' '], ['|', '_', ' '], ['|', '_', '|']],
    [[' ', '_', ' '], [' ', ' ', '|'], [' ', ' ', '|']],
    [[' ', '_', ' '], ['|', '_', '|'], ['|', '_', '|']],
    [[' ', '_', ' '], ['|', '_', '|'], [' ', '_', '|']]
  ]

	attr_reader :number, :display

  def initialize(number)
    @number = number
    @display = [[], [], []]

    parse_to_display
  end

  def number?
  	(number.to_i == 0) ? false : true
  end
  
  def display_lcd
    puts(
      display.map do |row|
        row.join('')
      end.join("\n")
    )
  end

  private

  def parse_to_display
    number.to_s.split('').map do |digit|
      DIGITS[digit.to_i].each_with_index do |row, index|
        (display[index].push row)
      end
    end
  end
end
