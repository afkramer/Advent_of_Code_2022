# frozen_string_literal: true

require_relative 'read_input'
require 'pry-byebug'

class Day6
  include ReadInput
  
  def initialize(input = nil)
    # @input = input || parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_6.txt')
    @input = input || parse_input('./inputs/day_6.txt')[0]
  end

  def part_one
    @input = @input.split('')
    @input.each_with_index do |letter, index|
      #binding.pry
      array_to_check = [letter, @input[index+1], @input[index+2], @input[index+3]]
      return index+4 if array_to_check.uniq.length == 4
    end
  end

  def part_two
    @input = @input.split('')
    @input.each_with_index do |letter, index|
      array_to_check = @input.slice(index, 14)
      return index + 14 if array_to_check.uniq.length == 14
    end
  end
end