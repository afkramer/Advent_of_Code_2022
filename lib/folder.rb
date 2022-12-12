# frozen_string_literal: true

class Folder
  attr_accessor :name, :files, :folders

  def initialize
    @name = nil
    @files = nil
    @folders = nil
  end
end
