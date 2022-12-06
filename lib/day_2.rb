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
    wins = [['A', 'Y'], ['B', 'Z'], ['C', 'Z']]
    loses = [['A', 'Z'], ['B', 'X'], ['C', 'Y']]

    strategy_lines = parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_1.txt')
    
  end
end
