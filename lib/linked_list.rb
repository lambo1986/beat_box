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
    else @head != nil
      @head.next_node = Node.new(sound)
    end
  end

  def count
    count_arr = []
     node = @head
     count_arr << node.data
     while node.next_node != nil
      node = node.next_node
      count_arr << node.data
     end
     count_arr.count
  end

  def to_string
    count_arr = []
    node = @head
    count_arr << node.data
    while node.next_node != nil
      node = node.next_node
      count_arr << node.data
    end
    count_arr.join' '
  end

  def prepend(sound)
    if @head == nil
      @head = Node.new(sound)
    else @head != nil
      prev_head = head     #makes the head moveable
      @head = Node.new(sound)
      @head.next_node = prev_head
    end
  end
end

  
