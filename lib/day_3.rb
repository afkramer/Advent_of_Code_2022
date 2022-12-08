# frozen_string_literal: true

require_relative 'read_input'

class Day3
  SHIFT_LOWER = 96
  SHIFT_UPPER = 64
  
  def part_one
    total = 0
    inputs = parse_input('/./inputs/day_3_test.txt')
    inputs.each do |line|
      # sue split to get an array just with letters
      # use slice to divide up the array into two halves
      # use intersection to get the letter that is the same in both halves of the array
    end
  end

  def part_two
  end
end