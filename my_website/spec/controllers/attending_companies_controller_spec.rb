require 'spec_helper'
require 'attending_company'

describe AttendingCompaniesController do

 describe "GET index" do
    it "assigns all attending_companies as @attending_companies" do
      attending_company = AttendingCompany.create
      get :index
      assigns(:attending_companies).should eq([attending_company])
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attending_company" do
      attending_company = AttendingCompany.create
      expect {
        delete :destroy, {:id => attending_company.id}
      }.to change(AttendingCompany, :count).by(-1)
    end

    it "redirects to the attending_companies list" do
      attending_company = AttendingCompany.create
      delete :destroy, {:id => attending_company.id}
      response.should redirect_to(attending_companies_url)
    end
  end

  describe "GET show" do
    it "assigns the requested attending_company as @attending_company" do
      attending_company = AttendingCompany.create
      get :show, {:id => attending_company.to_param}
      assigns(:attending_company).should eq(attending_company)
    end
  end

  describe "GET new" do
    it "assigns a new attending_company as @attending_company" do
      get :new
      assigns(:attending_company).should be_a_new(AttendingCompany)
    end
  end

  describe "GET edit" do
    it "assigns the requested attending_company as @attending_company" do
      attending_company = AttendingCompany.create
      get :edit, {:id => attending_company.to_param}
      assigns(:attending_company).should eq(attending_company)
    end
  end

  end






