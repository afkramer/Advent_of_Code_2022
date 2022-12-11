# frozen_string_literal: true

require_relative 'read_input'

class Day4
  include ReadInput

  def convert_input
    inputs = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_4.txt')
    cleaned_inputs = []
    inputs.each do |input_line|
      elf1, elf2 = input_line.split(',')
      elf1 = convert_elf(elf1)
      elf2 = convert_elf(elf2)
      cleaned_inputs << [elf1, elf2]
    end
    cleaned_inputs
  end

  def convert_elf(elf)
    elf = elf.split('-')
    Array(elf[0].to_i..elf[1].to_i)
  end

  def part_one
    inputs = convert_input
    total_overlaps = 0
    inputs.each do |input|
      intersect = input[0].intersection(input[1])
      if intersect.intersection(input[0]).length == input[0].length || intersect.intersection(input[1]).length == input[1].length
        total_overlaps += 1
      end
    end
    total_overlaps
  end

  def part_two
    inputs = convert_input
    total_partial_overlaps = 0
    inputs.each do |input|
      total_partial_overlaps += 1 if input[0].intersection(input[1]).length.positive?
    end
    total_partial_overlaps
  end
end
