require './lib/node'
require './lib/linked_list'
require 'pry'

node = Node.new("plop", nil)
list = LinkedList.new
list.append("doop")

binding.pry