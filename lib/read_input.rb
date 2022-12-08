# frozen_string_literal: true

module ReadInput
  def parse_input(file_name)
    File.readlines(file_name, chomp: true)
  end
end
