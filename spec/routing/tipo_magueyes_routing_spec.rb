require "rails_helper"

RSpec.describe TipoMagueyesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_magueyes").to route_to("tipo_magueyes#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_magueyes/new").to route_to("tipo_magueyes#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_magueyes/1").to route_to("tipo_magueyes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_magueyes/1/edit").to route_to("tipo_magueyes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_magueyes").to route_to("tipo_magueyes#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_magueyes/1").to route_to("tipo_magueyes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_magueyes/1").to route_to("tipo_magueyes#destroy", :id => "1")
    end

  end
end
