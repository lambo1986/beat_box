require './lib/node'
require './lib/linked_list'
require 'pry'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
     
    expect(list).to be_instance_of(LinkedList)
  end
 
  it "has a head" do
    list = LinkedList.new
 
    expect(list.head).to eq(nil)
  end

  it "can add a new head" do
    list = LinkedList.new

    list.append("doop")
  
    expect(list.head.data).to eq("doop")
  end

  it "can count number of sounds in" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
  
    expect(list.count).to eq(2)
  end

  it "return sound as string from list" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.to_string).to eq("doop deep")
  end

  it "will append a node to the beginning of list" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    
    expect(list.to_string).to eq("dop plop suu")
  end
end

