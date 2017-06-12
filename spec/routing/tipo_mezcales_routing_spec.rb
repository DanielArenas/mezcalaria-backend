require "rails_helper"

RSpec.describe TipoMezcalesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_mezcales").to route_to("tipo_mezcales#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_mezcales/new").to route_to("tipo_mezcales#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_mezcales/1").to route_to("tipo_mezcales#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_mezcales/1/edit").to route_to("tipo_mezcales#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_mezcales").to route_to("tipo_mezcales#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_mezcales/1").to route_to("tipo_mezcales#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_mezcales/1").to route_to("tipo_mezcales#destroy", :id => "1")
    end

  end
end
