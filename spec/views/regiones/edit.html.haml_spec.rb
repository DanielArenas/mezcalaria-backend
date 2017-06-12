require 'rails_helper'

RSpec.describe "regiones/edit", :type => :view do
  before(:each) do
    @region = assign(:region, Region.create!(
      :nombre => "MyString",
      :estado => nil
    ))
  end

  it "renders the edit region form" do
    render

    assert_select "form[action=?][method=?]", region_path(@region), "post" do

      assert_select "input#region_nombre[name=?]", "region[nombre]"

      assert_select "select#region_estado_id[name=?]", "region[estado_id]"
    end
  end
end
