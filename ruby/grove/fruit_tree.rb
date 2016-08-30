class FruitTree

  attr_reader :height, :crop, :mature_age, :death_age, :max_height, :height_inc

  attr_accessor :age

  class NoFruitError < StandardError
  end

  def initialize(age)
    @age = age
    @height = 0
    @crop = []
  end

  def has_crop?
    @crop.length > 0
  end

  def pass_growing_season
    @age += 1
    @crop =  []
    @height += self.height_inc if @height < self.max_height
  end

  def pick_a_fruit
    raise NoFruitError, "This tree has no fruit" unless has_crop?
    @crop.pop
  end

  def mature?
    self.age >= self.mature_age
  end

  def dead?
    self.age >= self.death_age
  end

end