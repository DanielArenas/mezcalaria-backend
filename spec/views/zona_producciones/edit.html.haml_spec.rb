require 'rails_helper'

RSpec.describe "zona_producciones/edit", :type => :view do
  before(:each) do
    @zona_produccion = assign(:zona_produccion, ZonaProduccion.create!(
      :localidad => "MyString",
      :municipio => nil
    ))
  end

  it "renders the edit zona_produccion form" do
    render

    assert_select "form[action=?][method=?]", zona_produccion_path(@zona_produccion), "post" do

      assert_select "input#zona_produccion_localidad[name=?]", "zona_produccion[localidad]"

      assert_select "select#zona_produccion_municipio_id[name=?]", "zona_produccion[municipio_id]"
    end
  end
end
