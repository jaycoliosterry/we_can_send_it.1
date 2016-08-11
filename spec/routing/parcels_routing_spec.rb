require "rails_helper"

RSpec.describe ParcelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parcels").to route_to("parcels#index")
    end

    it "routes to #new" do
      expect(:get => "/parcels/new").to route_to("parcels#new")
    end

    it "routes to #show" do
      expect(:get => "/parcels/1").to route_to("parcels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parcels/1/edit").to route_to("parcels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parcels").to route_to("parcels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/parcels/1").to route_to("parcels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/parcels/1").to route_to("parcels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parcels/1").to route_to("parcels#destroy", :id => "1")
    end

  end
end
