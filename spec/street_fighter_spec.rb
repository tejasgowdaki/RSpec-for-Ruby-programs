require "./../ruby_programs/street_fighter"

describe StreetFighter do
  let(:fighters) { StreetFighter.new }

  it "match the moves with players" do
    input = ['right', 'down', 'left', 'left', 'left', 'left', 'right']
    output = ['E.Honda', 'Chun Li', 'Ken', 'M.Bison', 'Sagat', 'Dhalsim', 'Sagat']
    expect(fighters.move_position(input)).to match output
  end

end
