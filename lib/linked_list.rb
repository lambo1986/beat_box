require './lib/node'
require './lib/linked_list'

class LinkedList 

  attr_reader :head

  def initialize
    @head = nil
  end
  
  def append(sound)
    @head = Node.new(sound, nil)
  end

  def count
    head_arr = []
    head_arr << head.data
    head_arr.count
  end

  def to_string
    head.data
  end
end

  
