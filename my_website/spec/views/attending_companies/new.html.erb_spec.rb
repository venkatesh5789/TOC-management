require 'spec_helper'

describe "attending_companies/new" do
  before(:each) do
    assign(:attending_company, stub_model(AttendingCompany,
      :name => "MyString",
      :day1 => false,
      :day2 => false,
      :specialization => "MyString"
    ).as_new_record)
  end

  it "renders new attending_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attending_companies_path, :method => "post" do
      assert_select "input#attending_company_name", :name => "attending_company[name]"
      assert_select "input#attending_company_day1", :name => "attending_company[day1]"
      assert_select "input#attending_company_day2", :name => "attending_company[day2]"
      assert_select "input#attending_company_specialization", :name => "attending_company[specialization]"
    end
  end
end
