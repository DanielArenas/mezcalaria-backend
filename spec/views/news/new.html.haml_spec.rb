require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :tittle => "MyString",
      :description => "MyText",
      :video => "MyString"
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input#news_tittle[name=?]", "news[tittle]"

      assert_select "textarea#news_description[name=?]", "news[description]"

      assert_select "input#news_video[name=?]", "news[video]"
    end
  end
end
