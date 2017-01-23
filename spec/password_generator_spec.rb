require "./../ruby_programs/password_generator"

describe PasswordGenerator do

  it "password generated correctly" do
    password = PasswordGenerator.new("tejas!1gowda")
    expect(password.check_for_conditions_to_create_password).to be true
  end

  it "password generated correctly" do
    password = PasswordGenerator.new("tejasgowda")
    expect(password.check_for_conditions_to_create_password).to be false
  end

end
