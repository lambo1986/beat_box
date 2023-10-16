require './lib/node'
require './lib/linked_list'
require './lib/beat_box'
require 'pry'

RSpec.describe BeatBox do
  it "exists" do
    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  it "has a list attribute from LinkedList" do
    bb = BeatBox.new
    binding.pry
    expect(bb.list).to be_instance_of(LinkedList)
  end
end
