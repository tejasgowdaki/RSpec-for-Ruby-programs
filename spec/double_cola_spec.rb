require "./../ruby_programs/double_cola"

describe DoubleCola do
  let(:name) { DoubleCola.new }

  it "checks for name match" do
    expect(name.double_cola(7)).to match "Sheldon"
  end
end
