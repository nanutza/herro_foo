require_relative "../orange"
require_relative "../orange_tree"
require_relative "../fruit_tree"
require 'pry'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe "#age" do
    it "has an age" do
      expect(tree.age).to eq 0
    end
  end

  describe "#height" do
    it "has a height" do
      expect(tree.height).to eq 0
    end
  end


  describe "#pass_growing_season" do
    it "should increase the age by 1" do

      expect {tree.pass_growing_season}.to change {tree.age}.to 1
    end

    it "should make the tree grow by 2.5 feet" do
      expect {tree.pass_growing_season}.to change{tree.height}.to 2.5
    end

    context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce oranges" do
        6.times { tree.pass_growing_season }
        expect(tree.has_crop?).to be true
      end
    end
  end

  describe "#mature?" do
    it "returns true if tree is old enough to bear fruit" do
       6.times { tree.pass_growing_season }
        expect(tree.mature?).to be true
    end

    it "returns false if tree is not old enough to bear fruit" do
       5.times { tree.pass_growing_season }
        expect(tree.mature?).to be false
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
      expect(tree.dead?).to be false
    end

    it "should return true for a dead tree" do
      100.times { tree.pass_growing_season }
      expect(tree.dead?).to be true
    end
  end

  describe '#has_oranges?' do
    it 'should return true if oranges are on the tree' do
      6.times { tree.pass_growing_season }
      expect(tree.has_crop?). to be true
    end

    it "should return false if the tree has no oranges" do
      expect(tree.has_crop?).to be false
    end
  end

  describe "#pick_an_orange" do
    it "should return an orange from the tree" do
       6.times { tree.pass_growing_season }
       expect { tree.pick_a_fruit }.to change {  tree.crop.length }.to tree.crop.length - 1
    end

    it "the returned orange should no longer be on the tree" do
      6.times { tree.pass_growing_season }
      picked_orange = tree.pick_a_fruit
      expect(tree.crop.include?(picked_orange)).to be false
    end

    it "should raise an error if the tree has no oranges" do
      expect { tree.pick_a_fruit }.to raise_error("This tree has no fruit")
    end
  end
end