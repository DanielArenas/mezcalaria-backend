require "rails_helper"

RSpec.describe ZonaProduccionesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/zona_producciones").to route_to("zona_producciones#index")
    end

    it "routes to #new" do
      expect(:get => "/zona_producciones/new").to route_to("zona_producciones#new")
    end

    it "routes to #show" do
      expect(:get => "/zona_producciones/1").to route_to("zona_producciones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/zona_producciones/1/edit").to route_to("zona_producciones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/zona_producciones").to route_to("zona_producciones#create")
    end

    it "routes to #update" do
      expect(:put => "/zona_producciones/1").to route_to("zona_producciones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/zona_producciones/1").to route_to("zona_producciones#destroy", :id => "1")
    end

  end
end
