require './lib/node'
require './lib/linked_list'
require 'pry'

node = Node.new("plop")
list = LinkedList.new
list.append("doop")
list.append("deep")

binding.pry