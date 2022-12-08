# frozen_string_literal: true

require_relative 'read_input'

class Day2
  include ReadInput

  LOSE_POINTS = 0
  DRAW_POINTS = 3
  WIN_POINTS = 6
  ROCK_POINTS = 1
  PAPER_POINTS = 2
  SCISSORS_POINTS = 3

  def part_one 
    draws = [['A', 'X'], ['B', 'Y'], ['C', 'Z']]
    wins = [['A', 'Y'], ['B', 'Z'], ['C', 'X']]
    loses = [['A', 'Z'], ['B', 'X'], ['C', 'Y']]
    total_score = 0

    strategy_lines = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_2.txt')
    strategy_lines.each do |line|
      arr = line.split
      if draws.include?(arr)
        total_score += DRAW_POINTS
      elsif wins.include?(arr)
        total_score += WIN_POINTS
      end

      case arr[1]
      when 'X'
        total_score += ROCK_POINTS
      when 'Y'
        total_score += PAPER_POINTS
      else
        total_score += SCISSORS_POINTS
      end
    end
    total_score
  end
end

d2 = Day2.new
puts d2.part_one
