require 'rails_helper'

RSpec.describe "mezcales/edit", :type => :view do
  before(:each) do
    @mezcal = assign(:mezcal, Mezcal.create!(
      :tipo_mezcal => nil,
      :tipo_maguey => nil,
      :tipo_destilado => nil,
      :marca => nil,
      :precio_promedio => "9.99",
      :zona_produccion => nil,
      :maestro_mezcalero => "MyString",
      :certificado => "",
      :lugares_venta => "MyText",
      :comentario_maestro => "MyText"
    ))
  end

  it "renders the edit mezcal form" do
    render

    assert_select "form[action=?][method=?]", mezcal_path(@mezcal), "post" do

      assert_select "select#mezcal_tipo_mezcal_id[name=?]", "mezcal[tipo_mezcal_id]"

      assert_select "select#mezcal_tipo_maguey_id[name=?]", "mezcal[tipo_maguey_id]"

      assert_select "select#mezcal_tipo_destilado_id[name=?]", "mezcal[tipo_destilado_id]"

      assert_select "select#mezcal_marca_id[name=?]", "mezcal[marca_id]"

      assert_select "input#mezcal_precio_promedio[name=?]", "mezcal[precio_promedio]"

      assert_select "select#mezcal_zona_produccion_id[name=?]", "mezcal[zona_produccion_id]"

      assert_select "input#mezcal_maestro_mezcalero[name=?]", "mezcal[maestro_mezcalero]"

      assert_select "input#mezcal_certificado[name=?]", "mezcal[certificado]"

      assert_select "textarea#mezcal_lugares_venta[name=?]", "mezcal[lugares_venta]"

      assert_select "textarea#mezcal_comentario_maestro[name=?]", "mezcal[comentario_maestro]"
    end
  end
end
