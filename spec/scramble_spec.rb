require "./../ruby_programs/scramble"

describe Scramble do
  let(:words) {Scramble.new}

  it "scramble matches true" do
    expect(words.scramble("rkqodlw", "world")).to be true
  end

  it "scramble word matches false" do
    expect(words.scramble("katas", "steak")).to be false
  end
end
