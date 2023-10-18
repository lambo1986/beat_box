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

  it "will insert sound into index position" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
  
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "returns a new list of nodes" do
    list = LinkedList.new
    list.append("shi") # --append won't work more than twice
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")  
    list.insert(3, "shu")  # --had to use insert instead
  
    expect(list.to_string).to eq("deep woo shi shu blop")
  end

  it "returns sounds(data) from specified index" do
    list = LinkedList.new
    list.append("shi") 
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")  
    list.insert(3, "shu")  
    
    expect(list.find(2, 1)).to eq("shi")
  end

  it "returns boolean if sound(data) is included in list" do
    list = LinkedList.new
    list.append("shi") 
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")  
    list.insert(3, "shu")  
    
    expect(list.includes?("deep")).to be true
    expect(list.includes?("pde")).to be false
  end

  it "removes last sound from list" do
    list = LinkedList.new
    list.append("shi") 
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")  
    list.insert(3, "shu")
    
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end

