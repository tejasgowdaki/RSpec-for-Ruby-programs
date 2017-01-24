require "student_management"

fdescribe "StudentManagement" do

  let(:student) { StudentManagement.find_details_by_year(2015).first }

  it "check year of joining" do
    expect(student.year_of_joining).to eq 2015
  end

end
