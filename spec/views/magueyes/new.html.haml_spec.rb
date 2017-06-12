require 'rails_helper'

RSpec.describe "magueyes/new", type: :view do
  before(:each) do
    assign(:magueye, Magueye.new(
      :title => "MyString",
      :sub_title => "MyString",
      :text => "",
      :image => "MyString",
      :language => 1
    ))
  end

  it "renders new magueye form" do
    render

    assert_select "form[action=?][method=?]", magueyes_path, "post" do

      assert_select "input#magueye_title[name=?]", "magueye[title]"

      assert_select "input#magueye_sub_title[name=?]", "magueye[sub_title]"

      assert_select "input#magueye_text[name=?]", "magueye[text]"

      assert_select "input#magueye_image[name=?]", "magueye[image]"

      assert_select "input#magueye_language[name=?]", "magueye[language]"
    end
  end
end
