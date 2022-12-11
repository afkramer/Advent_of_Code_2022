# frozen_string_literal: true

require_relative './read_input'

class Day5
  import ReadInput
  def day_one
    stacks = [%w[H, C, R],
              %w[B, J, H, L, S, F],
              %w[R, M, D, H, J, T, Q],
              %w[S, G, R, H, Z, B, J],
              %w[R, P, F, Z, T, D, C, B],
              %w[T, H, C, G],
              %w[S, N, V, Z, B, P, W, L],
              %w[R, J, Q, G, C],
              %w[L, D, T, R, H, P, F, S]]

    inputs = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_4.txt')
  end

  def shift_elements(from_arr, to_arr, num)
    num.times do
      to_arr.append(from_arr.pop)
    end
  end

  def parse_instruction(line)
    line_arr = line.split(' ')
    instructions = []
    instructions.push(line_arr[1].to_i, line_arr[3].to_i, line_arr[5].to_i)
  end
end
