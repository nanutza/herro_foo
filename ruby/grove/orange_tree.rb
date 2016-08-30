
require_relative 'fruit_tree'

class OrangeTree < FruitTree


def initialize(age=0)
  super
  @mature_age = 6
  @death_age = 100
  @max_height = 25
  @height_inc = 2.5
end

  def pass_growing_season
    super
    rand(100..300).times { @crop << Orange.new } if self.mature?
  end

end