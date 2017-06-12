require 'rails_helper'

RSpec.describe "zona_producciones/show", :type => :view do
  before(:each) do
    @zona_produccion = assign(:zona_produccion, ZonaProduccion.create!(
      :localidad => "Localidad",
      :municipio => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Localidad/)
    expect(rendered).to match(//)
  end
end
