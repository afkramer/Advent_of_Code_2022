# frozen_string_literal: true

require_relative 'read_input'

class Day8
  include ReadInput

  def initialize
    @trees = create_tree_arrays(parse_input('./inputs/day_8_test.txt'))
  end

  def create_tree_arrays(string_arrays)
    trees_string_arrays = []
    string_arrays.each { |string| trees_string_arrays << string.split('') }
    trees_int_arrays = []
    trees_string_arrays.each do |line|
      int_array = []
      line.each { |char| int_array << char.to_i }
      
    puts trees_array
    trees_array
  end

end