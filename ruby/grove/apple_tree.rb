require_relative 'fruit_tree'

class AppleTree < FruitTree


def initialize(age=0)
  super
  @mature_age = 5
  @death_age = 45
  @max_height = 26
  @height_inc = 2
end

  def pass_growing_season
    super
    rand(400..600).times { @crop << Apple.new } if self.mature?
  end

end