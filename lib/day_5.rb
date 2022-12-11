# frozen_string_literal: true

require_relative './read_input'

class Day5
  include ReadInput

  def initialize
    @stacks_test = [%w[Z N],
                    %w[M C D],
                    %w[P]]
    @stacks = [%w[H C R],
               %w[B J H L S F],
               %w[R M D H J T Q],
               %w[S G R H Z B J],
               %w[R P F Z T D C B],
               %w[T H C G],
               %w[S N V Z B P W L],
               %w[R J Q G C],
               %w[L D T R H P F S]]
  end

  def part_one
    inputs = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_5.txt')
    inputs.each do |line|
      instructions = parse_instruction(line)
      shift_elements_one_at_a_time(instructions[0], instructions[1], instructions[2])
    end
    answer = ''
    @stacks.each { |stack| answer += stack.last }
    answer
  end

  def part_two
    inputs = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_5.txt')
    inputs.each do |line|
      instructions = parse_instruction(line)
      shift_elements_in_batches(instructions[0], instructions[1], instructions[2])
    end
    answer = ''
    @stacks.each { |stack| answer += stack.last }
    answer
  end

  def shift_elements_one_at_a_time(num, from_arr_ind, to_arr_ind)
    num.times do
      @stacks[to_arr_ind].append(@stacks[from_arr_ind].pop)
    end
  end

  def shift_elements_in_batches(num, from_arr_ind, to_arr_ind)
    @stacks[to_arr_ind].append(@stacks[from_arr_ind].slice!(num * -1, num)).flatten!
  end

  def parse_instruction(line)
    line_arr = line.split(' ')
    instructions = []
    instructions.push(line_arr[1].to_i, line_arr[3].to_i - 1, line_arr[5].to_i - 1)
  end
end

d = Day5.new
puts d.part_two
