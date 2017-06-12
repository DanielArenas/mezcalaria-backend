require 'rails_helper'

RSpec.describe "tipo_mezcales/show", :type => :view do
  before(:each) do
    @tipo_mezcal = assign(:tipo_mezcal, TipoMezcal.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
