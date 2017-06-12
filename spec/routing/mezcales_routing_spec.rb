require "rails_helper"

RSpec.describe MezcalesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mezcales").to route_to("mezcales#index")
    end

    it "routes to #new" do
      expect(:get => "/mezcales/new").to route_to("mezcales#new")
    end

    it "routes to #show" do
      expect(:get => "/mezcales/1").to route_to("mezcales#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mezcales/1/edit").to route_to("mezcales#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mezcales").to route_to("mezcales#create")
    end

    it "routes to #update" do
      expect(:put => "/mezcales/1").to route_to("mezcales#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mezcales/1").to route_to("mezcales#destroy", :id => "1")
    end

  end
end
