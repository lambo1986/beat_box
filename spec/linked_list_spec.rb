require './lib/node'
require './lib/linked_list'

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
    list.count
   
    expect(list.count).to eq(1)
  end

  it "return sound as string from list" do
    list = LinkedList.new
    list.append("doop")
    list.to_string

    expect(list.to_string).to eq("doop")
  end
end

