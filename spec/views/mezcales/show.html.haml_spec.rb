require 'rails_helper'

RSpec.describe "mezcales/show", :type => :view do
  before(:each) do
    @mezcal = assign(:mezcal, Mezcal.create!(
      :tipo_mezcal => nil,
      :tipo_maguey => nil,
      :tipo_destilado => nil,
      :marca => nil,
      :precio_promedio => "9.99",
      :zona_produccion => nil,
      :maestro_mezcalero => "Mastro Mezcalero",
      :certificado => "",
      :lugares_venta => "MyText",
      :comentario_maestro => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Mastro Mezcalero/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
