
require_relative 'fruit_tree'

class PearTree < FruitTree


def initialize(age=0)
  super
  @mature_age = 5
  @death_age = 40
  @max_height = 20
  @height_inc = 2.5
end

  def pass_growing_season
    super
    rand(175..225).times { @crop << Pear.new } if self.mature?
  end

end