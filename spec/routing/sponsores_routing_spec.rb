require "rails_helper"

RSpec.describe SponsoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sponsores").to route_to("sponsores#index")
    end

    it "routes to #new" do
      expect(:get => "/sponsores/new").to route_to("sponsores#new")
    end

    it "routes to #show" do
      expect(:get => "/sponsores/1").to route_to("sponsores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sponsores/1/edit").to route_to("sponsores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sponsores").to route_to("sponsores#create")
    end

    it "routes to #update" do
      expect(:put => "/sponsores/1").to route_to("sponsores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sponsores/1").to route_to("sponsores#destroy", :id => "1")
    end

  end
end
