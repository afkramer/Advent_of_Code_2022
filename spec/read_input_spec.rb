# frozen_string_literal: true

require_relative '../lib/read_input'
require_relative '../lib/day_1'

describe ReadInput do
  describe '#parse_input' do
    context 'test file given with blank lines and numbers' do
      subject(:test_file_input) { Day1.new }
      it 'outputs an array of numbers as strings' do
        expected_array = ['1000', '2000', '3000', '', '4000', '', '5000', '6000', '', '7000', '8000', '9000', '', '10000']
        array = test_file_input.parse_input('/home/adri/Documents/Programming/Ruby/repos/Advent_of_Code_2022/inputs/day_1_test.txt')
        expect(array).to eq(expected_array)
      end
    end
  end
end
