require './lib/node'
require './lib/linked_list'
require './lib/beat_box'
require 'pry'

class BeatBox
  attr_reader
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end
end
