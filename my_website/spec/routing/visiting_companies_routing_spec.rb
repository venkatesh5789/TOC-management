require "spec_helper"

describe VisitingCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/visiting_companies").should route_to("visiting_companies#index")
    end

    it "routes to #new" do
      get("/visiting_companies/new").should route_to("visiting_companies#new")
    end

    it "routes to #show" do
      get("/visiting_companies/1").should route_to("visiting_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/visiting_companies/1/edit").should route_to("visiting_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/visiting_companies").should route_to("visiting_companies#create")
    end

    it "routes to #update" do
      put("/visiting_companies/1").should route_to("visiting_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/visiting_companies/1").should route_to("visiting_companies#destroy", :id => "1")
    end

  end
end
