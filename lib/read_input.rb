# frozen_string_literal: true

module ReadInput
  def parse_input(file_name)
    File.readlines(file_name, chomp: true)
    # TODO figure out how to deal with the input ["1000\n", "2000\n", "3000\n", "\n", "4000\n"]
  end
end
