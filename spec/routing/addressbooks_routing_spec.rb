require "rails_helper"

RSpec.describe AddressbooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/addressbooks").to route_to("addressbooks#index")
    end

    it "routes to #new" do
      expect(:get => "/addressbooks/new").to route_to("addressbooks#new")
    end

    it "routes to #show" do
      expect(:get => "/addressbooks/1").to route_to("addressbooks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/addressbooks/1/edit").to route_to("addressbooks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/addressbooks").to route_to("addressbooks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/addressbooks/1").to route_to("addressbooks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/addressbooks/1").to route_to("addressbooks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/addressbooks/1").to route_to("addressbooks#destroy", :id => "1")
    end

  end
end
