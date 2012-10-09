require 'spec_helper'

describe VisitingCompaniesController do

  describe "GET index" do
    it "assigns all visiting_companies as @visiting_companies" do
      visiting_company = VisitingCompany.create
      get :index
      assigns(:visiting_companies).should eq([visiting_company])
    end
  end

  describe "GET show" do
    it "assigns the requested visiting_company as @visiting_company" do
      visiting_company = VisitingCompany.create
      get :show, {:id => visiting_company.to_param}
      assigns(:visiting_company).should eq(visiting_company)
    end
  end

 describe "GET edit" do
    it "assigns the requested visiting_company as @visiting_company" do
      visiting_company = VisitingCompany.create
      get :edit, {:id => visiting_company.to_param}
      assigns(:visiting_company).should eq(visiting_company)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new VisitingCompany" do
        expect {
          post :create
        }.to change(VisitingCompany, :count).by(1)
      end

      it "assigns a newly created visiting_company as @visiting_company" do
        post :create
        assigns(:visiting_company).should be_a(VisitingCompany)
        assigns(:visiting_company).should be_persisted
      end


    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved visiting_company as @visiting_company" do
        # Trigger the behavior that occurs when invalid params are submitted
        VisitingCompany.any_instance.stub(:save).and_return(false)
        post :create
        assigns(:visiting_company).should be_a_new(VisitingCompany)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        VisitingCompany.any_instance.stub(:save).and_return(false)
        post :create
        response.should render_template("new")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested visiting_company" do
      visiting_company = VisitingCompany.create
      expect {
        delete :destroy, {:id => visiting_company.to_param}
      }.to change(VisitingCompany, :count).by(-1)
    end

    it "redirects to the visiting_companies list" do
      visiting_company = VisitingCompany.create
      delete :destroy, {:id => visiting_company.to_param}
      response.should redirect_to(visiting_companies_url)
    end
  end

end
