require 'spec_helper'

describe "attending_companies/show" do
  before(:each) do
    @attending_company = assign(:attending_company, stub_model(AttendingCompany,
      :name => "Name",
      :day1 => false,
      :day2 => false,
      :specialization => "Specialization"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Specialization/)
  end
end
