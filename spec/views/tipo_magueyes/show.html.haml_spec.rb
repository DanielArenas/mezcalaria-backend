require 'rails_helper'

RSpec.describe "tipo_magueyes/show", :type => :view do
  before(:each) do
    @tipo_maguey = assign(:tipo_maguey, TipoMaguey.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
