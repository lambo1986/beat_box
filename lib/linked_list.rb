require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedList 

  attr_reader :head
  attr_accessor :head

  def initialize
    @head = nil
  
  end
  #If head is empty, fill with new node. If already occupied, 
  #attach new node to the end of the head where nil was.                      
  def append(sound)
    if @head == nil
      @head = Node.new(sound)  
    else @head != nil
      @head.next_node = Node.new(sound)  #--had help from a Rock
    end
  end
  #Fill empty array with the data from @head, which came from previous nodes. 
  #While next node exists, add data from next node to the array. Count items in Array.
  def count
    count_arr = []
     node = @head
     count_arr << node.data
     while node.next_node != nil #tried: until @head.next_node == nil --had help by peeking 
      node = node.next_node
      count_arr << node.data
     end
     count_arr.count
  end
  #Fill empty array with the data from @head, which came from previous nodes.
  #While next node exists, add data from next node to the array. 
  #Join array together with spaces between each element.
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
  #If @head is empty, add new node as head. If @head is occupied, assign node already there 
  #to new variable. Make a new node assigned to the @head (front) then assign the old @head
  #to the next node.   
  def prepend(sound)
    if @head == nil
      @head = Node.new(sound)
    else @head != nil
      prev_head = head     #makes the head moveable --found help on youtube
      @head = Node.new(sound)
      @head.next_node = prev_head # --this.
    end
  end
  #Make @head a new variable(node). 

  def insert(pos, sound)
    node = head 
    (pos - 1).times do # --took much thought to understand
      raise "List not long enough" if node == nil  #--from stackoverflow... optional 
      node = node.next_node
    end                            

    new_node = Node.new(sound)
    new_node.next_node = node.next_node
    node.next_node = new_node
  end
  #
  def find(index, selection)

  end
end

  
