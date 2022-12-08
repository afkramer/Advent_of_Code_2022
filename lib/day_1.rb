# frozen_string_literal: true

require_relative 'read_input'

require 'debug'

class Day1
  include ReadInput

  def get_lines
    array = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_1.txt')
  end

  def part_one(input)
    max_sum = 0
    curr_sum = 0
    input.each do |line|
      curr_sum += line.to_i if line != ''

      unless line != ''
        if curr_sum > max_sum
          max_sum = curr_sum
        end
        curr_sum = 0
      end
    end
    max_sum
  end

  def part_two(input)
    top_three = [0, 0, 0]
    curr_sum = 0
    input.each_with_index do |line, ind|
      curr_sum += line.to_i if line != ''

      if line == '' || ind == input.length - 1
        if curr_sum > top_three.min
          top_three.pop
          top_three.push(curr_sum)
          top_three.sort!.reverse!
        end
        curr_sum = 0
      end
    end
    top_three.sum
  end
end

day1 = Day1.new
puts day1.part_two(day1.get_lines)
