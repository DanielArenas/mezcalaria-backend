require 'rails_helper'

RSpec.describe "mezcales/index", :type => :view do
  before(:each) do
    assign(:mezcales, [
      Mezcal.create!(
        :tipo_mezcal => nil,
        :tipo_maguey => nil,
        :tipo_destilado => nil,
        :marca => nil,
        :precio_promedio => "9.99",
        :zona_produccion => nil,
        :maestro_mezcalero => "Mastro Mezcalero",
        :lugares_venta => "Varios lugares",
        :comentario_maestro => "Comentario 1"
      ),
      Mezcal.create!(
        :tipo_mezcal => nil,
        :tipo_maguey => nil,
        :tipo_destilado => nil,
        :marca => nil,
        :precio_promedio => "99.99",
        :zona_produccion => nil,
        :maestro_mezcalero => "Mastro Mezcalero",
        :lugares_venta => "Varios lugares",
        :comentario_maestro => "Comentario 2"
      )
    ])
  end

  it "renders a list of mezcales" do
    render
    assert_select "tr>td", :text => "9.99"
    assert_select "tr>td", :text => "99.99"
    assert_select "tr>td", :text => "Mastro Mezcalero".to_s, :count => 2
  end
end
