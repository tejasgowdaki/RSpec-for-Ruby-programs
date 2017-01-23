require "./../ruby_programs/gender"

describe GenderAPI do
  let(:name) { GenderAPI.new }

  it "gender should match" do
    expect(name.get_gender("abhi")).to be_a_instance_of Hash
  end

  it "expect to match format" do
    expect(name.get_gender("abhi")["gender"]).to match "male"
  end

end
