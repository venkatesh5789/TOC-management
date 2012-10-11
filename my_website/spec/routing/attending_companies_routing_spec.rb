require "spec_helper"

describe AttendingCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/attending_companies").should route_to("attending_companies#index")
    end

    it "routes to #new" do
      get("/attending_companies/new").should route_to("attending_companies#new")
    end

    it "routes to #show" do
      get("/attending_companies/1").should route_to("attending_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attending_companies/1/edit").should route_to("attending_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attending_companies").should route_to("attending_companies#create")
    end

    it "routes to #update" do
      put("/attending_companies/1").should route_to("attending_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attending_companies/1").should route_to("attending_companies#destroy", :id => "1")
    end

  end
end
