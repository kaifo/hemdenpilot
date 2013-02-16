require "spec_helper"

describe ShirtsController do
  describe "routing" do

    it "routes to #index" do
      get("/shirts").should route_to("shirts#index")
    end

    it "routes to #new" do
      get("/shirts/new").should route_to("shirts#new")
    end

    it "routes to #show" do
      get("/shirts/1").should route_to("shirts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shirts/1/edit").should route_to("shirts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shirts").should route_to("shirts#create")
    end

    it "routes to #update" do
      put("/shirts/1").should route_to("shirts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shirts/1").should route_to("shirts#destroy", :id => "1")
    end

  end
end
