require_relative "../pear"

describe Pear do
  let(:apple) { Pear.new }

  it "has a diameter between 2.5 and 3.2" do
    desired_diameter_range = (2.5..3.2)
    expect(desired_diameter_range).to cover apple.diameter
  end
end