require 'spec_helper'

describe "attending_companies/edit" do
  before(:each) do
    @attending_company = assign(:attending_company, stub_model(AttendingCompany,
      :name => "MyString",
      :day1 => false,
      :day2 => false,
      :specialization => "MyString"
    ))
  end

  it "renders the edit attending_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attending_companies_path(@attending_company), :method => "post" do
      assert_select "input#attending_company_name", :name => "attending_company[name]"
      assert_select "input#attending_company_day1", :name => "attending_company[day1]"
      assert_select "input#attending_company_day2", :name => "attending_company[day2]"
      assert_select "input#attending_company_specialization", :name => "attending_company[specialization]"
    end
  end
end
