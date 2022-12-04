# frozen_string_literal: true

require_relative 'read_input'

class Day1
  include ReadInput

  def get_lines
    array = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_1.txt')
  end

  def part_one(input)
    max_sum = 0
    elf_number = 0
    curr_sum = 0
    curr_number = 1
    input.each do |line|
      curr_sum += line.to_i if line != ''

      unless line != ''
        if curr_sum > max_sum
          max_sum = curr_sum
          elf_number = curr_number
        end
        curr_number += 1
        curr_sum = 0
      end
    end
    max_sum
  end
end

day1 = Day1.new
puts day1.part_one(day1.get_lines)
