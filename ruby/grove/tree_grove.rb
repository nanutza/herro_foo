require_relative 'fruit_tree'
require_relative 'orange_tree'
require_relative 'pear_tree'
require_relative 'apple_tree'
require_relative 'orange'
require_relative 'pear'
require_relative 'apple'



class TreeGrove
  attr_reader :orange_trees, :pear_trees, :apple_trees

  def initialize
    @orange_trees =
                Array.new(20) {OrangeTree.new(5)} +
                Array.new(20) {OrangeTree.new(20)} +
                Array.new(10) {OrangeTree.new(37)} +
                Array.new(20) {OrangeTree.new(50)}
    @pear_trees =
                Array.new(10) {PearTree.new(0)} +
                Array.new(10) {PearTree.new(20)} +
                Array.new(20) {PearTree.new(37)} +
                Array.new(10) {PearTree.new(50)}
    @apple_trees =
                Array.new(10) {AppleTree.new(0)} +
                Array.new(10) {AppleTree.new(5)} +
                Array.new(20) {AppleTree.new(20)} +
                Array.new(20) {AppleTree.new(37)} +
                Array.new(10) {AppleTree.new(50)}

  end

  def all_trees
    @orange_trees + @pear_trees + @apple_trees
  end

  def pass_season
    all_trees.each { |tree| tree.pass_growing_season }
  end


end

grove = TreeGrove.new

p grove.pass_season