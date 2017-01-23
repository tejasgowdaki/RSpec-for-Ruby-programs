require "./../ruby_programs/rot13"

describe Rot13 do
  let(:string) { Rot13.new }

  it "check string class" do
    expect(string).to be_an_instance_of Rot13
  end

  it "should match the string" do
    expect(string.rot("grfg!")).to match "test"
  end

end
