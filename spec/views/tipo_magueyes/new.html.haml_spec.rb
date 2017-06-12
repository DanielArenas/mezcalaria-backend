require 'rails_helper'

RSpec.describe "tipo_magueyes/new", :type => :view do
  before(:each) do
    assign(:tipo_maguey, TipoMaguey.new(
      :nombre => "MyString"
    ))
  end

  it "renders new tipo_maguey form" do
    render

    assert_select "form[action=?][method=?]", tipo_magueyes_path, "post" do

      assert_select "input#tipo_maguey_nombre[name=?]", "tipo_maguey[nombre]"
    end
  end
end
