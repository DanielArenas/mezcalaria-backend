require "rails_helper"

RSpec.describe RegionesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/regiones").to route_to("regiones#index")
    end

    it "routes to #new" do
      expect(:get => "/regiones/new").to route_to("regiones#new")
    end

    it "routes to #show" do
      expect(:get => "/regiones/1").to route_to("regiones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/regiones/1/edit").to route_to("regiones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/regiones").to route_to("regiones#create")
    end

    it "routes to #update" do
      expect(:put => "/regiones/1").to route_to("regiones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/regiones/1").to route_to("regiones#destroy", :id => "1")
    end

  end
end
