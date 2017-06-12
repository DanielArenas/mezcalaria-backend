require "rails_helper"

RSpec.describe MagueyesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/magueyes").to route_to("magueyes#index")
    end

    it "routes to #new" do
      expect(:get => "/magueyes/new").to route_to("magueyes#new")
    end

    it "routes to #show" do
      expect(:get => "/magueyes/1").to route_to("magueyes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/magueyes/1/edit").to route_to("magueyes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/magueyes").to route_to("magueyes#create")
    end

    it "routes to #update" do
      expect(:put => "/magueyes/1").to route_to("magueyes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/magueyes/1").to route_to("magueyes#destroy", :id => "1")
    end

  end
end
