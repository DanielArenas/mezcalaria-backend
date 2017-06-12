require 'rails_helper'

RSpec.describe "municipios/edit", :type => :view do
  before(:each) do
    @municipio = assign(:municipio, Municipio.create!(
      :nombre => "MyString",
      :estado => nil,
      :region => nil
    ))
  end

  it "renders the edit municipio form" do
    render

    assert_select "form[action=?][method=?]", municipio_path(@municipio), "post" do

      assert_select "input#municipio_nombre[name=?]", "municipio[nombre]"

      assert_select "select#municipio_estado_id[name=?]", "municipio[estado_id]"

      assert_select "select#municipio_region_id[name=?]", "municipio[region_id]"
    end
  end
end
