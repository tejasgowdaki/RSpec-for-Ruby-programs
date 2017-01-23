require "./../ruby_programs/rot13"

describe Rot13 do
  let(:string) { Rot13.new }

  it "should match the string" do
    expect(string.rot("grfg!")).to match "test"
  end

end
