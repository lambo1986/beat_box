require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedList 

  attr_reader :head
  attr_accessor :head

  def initialize
    @head = nil
  
  end
  
  def append(sound)
    if @head == nil
      @head = Node.new(sound)
    elsif @head != nil
      @head.next_node = Node.new(sound)
    end
  end

  def count
    count_arr = []
     count_arr << @head.data
     count_arr << @head.next_node.data
     count_arr.count
  end

  def to_string
    count_arr = []
     count_arr << @head.data
     count_arr << @head.next_node.data
     count_arr.join' '
  end
end

  
