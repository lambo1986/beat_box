require './lib/node'
require './lib/linked_list'
require './lib/beat_box'
require 'pry'

class BeatBox
  attr_reader :list, :head, :data
  attr_accessor :list, :head, :data, :next_node

  def initialize
    @list = LinkedList.new
  end

  # def append(sounds)
  #   sounds = sounds.split
  #   sounds.each do |sound|
  #     if @list.head == nil
  #       @list.head = Node.new(sound)
  #     else
  #       while @list.head.next_node == nil
  #         @list.head.next_node = Node.new(sound)
  #       end
  #     end
  #   end
  #   sound_last = sounds[-1]
  #   while @list.head.next_node == nil
  #     @list.head.next_node = Node.new(sound_last)
  #   end
  # end
        
    # Almost working. Takes sounds into array, reverses and prepends. 
    # Needs to append in order. REVERSE THIS!
  def append(sounds)
    sounds = sounds.split.reverse
    sounds.each do |sound|
      if @list.head == nil
        @list.head = Node.new(sound)
      else @list.head != nil
        prev_head = @list.head   
        @list.head = Node.new(sound)
        @list.head.next_node = prev_head
      end
    end
  end
  #Basically copied from LinkedList
  def count
    count_arr = []
      node = @list.head
      count_arr << node.data
     while node.next_node != nil 
      node = node.next_node
      count_arr << node.data
     end
      count_arr.count
  end

  def play
    `say -r 137 -v Fred "#{@list.to_string}"`
  end
end
    

