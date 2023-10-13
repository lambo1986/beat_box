require './lib/node'

RSpec.describe Node do
  it "exists" do
    node = Node.new("plop", nil)

    expect(node).to be_instance_of(Node)
  end

  it "has data" do
    node = Node.new("plop", nil)

    expect(node.data).to eq("plop")
  end

  it "has a next node" do
    node = Node.new("plop", nil)

    expect(node.next_node).to eq(@next_node)
  end
end