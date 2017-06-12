require 'rails_helper'

RSpec.describe "tipo_destilados/show", :type => :view do
  before(:each) do
    @tipo_destilado = assign(:tipo_destilado, TipoDestilado.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
