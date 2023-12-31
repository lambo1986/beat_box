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

    expect(bb.list).to be_instance_of(LinkedList)
  end

  it "can append multiple sounds to list" do
    bb = BeatBox.new
    bb.append("deep doo ditt")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
  end

  it "can count the number of data in list" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end

  it "plays the sounds added already" do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")

    expect(bb.play).to eq("")
  end

  it "plays a string of sounds passed in" do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")
    
    expect(bb.play_this("bop boo bap")).to eq("")
  end
end
