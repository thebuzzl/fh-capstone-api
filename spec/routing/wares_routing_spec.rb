require "rails_helper"

RSpec.describe WaresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/wares").to route_to("wares#index")
    end

    it "routes to #show" do
      expect(:get => "/wares/1").to route_to("wares#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wares").to route_to("wares#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wares/1").to route_to("wares#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wares/1").to route_to("wares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wares/1").to route_to("wares#destroy", :id => "1")
    end
  end
end
