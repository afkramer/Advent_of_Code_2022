# frozen_string_literal: true

require_relative 'read_input'
require 'pry-byebug'

class Day3
  include ReadInput
  
  SHIFT_LOWER = 96
  SHIFT_UPPER = 38
  
  def part_one
    total = 0
    inputs = parse_input('./inputs/day_3.txt')
    inputs.each do |line|
      array = line.split('')
      half1 = array.slice(0...line.length / 2)
      half2 = array.slice(line.length / 2..line.length)
      common_letter = half1.intersection(half2)
      total += common_letter[0].ord
      total -= if common_letter[0].ord >= 97
                 SHIFT_LOWER
               else
                 SHIFT_UPPER
               end
    end
    total
  end

  def part_two
    total = 0
    #inputs = parse_input('./inputs/day_3_test.txt')
    inputs = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_3.txt')
    tuple_array = []
    inputs.each_slice(3) { |tuple| tuple_array.push(tuple) }
    tuple_array.each do |tuple|
      common_letter = tuple[0].split('').intersection(tuple[1].split('')).intersection(tuple[2].split(''))
      total += common_letter[0].ord
      total -= if common_letter[0].ord >= 97
                 SHIFT_LOWER
               else
                 SHIFT_UPPER
               end
    end
    total
  end
end

d = Day3.new
puts d.part_two
