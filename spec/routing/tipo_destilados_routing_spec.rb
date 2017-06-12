require "rails_helper"

RSpec.describe TipoDestiladosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_destilados").to route_to("tipo_destilados#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_destilados/new").to route_to("tipo_destilados#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_destilados/1").to route_to("tipo_destilados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_destilados/1/edit").to route_to("tipo_destilados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_destilados").to route_to("tipo_destilados#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_destilados/1").to route_to("tipo_destilados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_destilados/1").to route_to("tipo_destilados#destroy", :id => "1")
    end

  end
end
