require 'rails_helper'

RSpec.describe "zona_producciones/new", :type => :view do
  before(:each) do
    assign(:zona_produccion, ZonaProduccion.new(
      :localidad => "MyString",
      :municipio => nil
    ))
  end

  it "renders new zona_produccion form" do
    render

    assert_select "form[action=?][method=?]", zona_producciones_path, "post" do

      assert_select "input#zona_produccion_localidad[name=?]", "zona_produccion[localidad]"

      assert_select "select#zona_produccion_municipio_id[name=?]", "zona_produccion[municipio_id]"
    end
  end
end
