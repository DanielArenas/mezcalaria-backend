require 'rails_helper'

RSpec.describe "zona_producciones/index", :type => :view do
  before(:each) do
    assign(:zona_producciones, [
      ZonaProduccion.create!(
        :localidad => "Localidad",
        :municipio => nil
      ),
      ZonaProduccion.create!(
        :localidad => "Localidad",
        :municipio => nil
      )
    ])
  end

  it "renders a list of zona_producciones" do
    render
    assert_select "tr>td", :text => "Localidad".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
