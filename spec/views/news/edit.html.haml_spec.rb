require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :tittle => "MyString",
      :description => "MyText",
      :video => "MyString"
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input#news_tittle[name=?]", "news[tittle]"

      assert_select "textarea#news_description[name=?]", "news[description]"

      assert_select "input#news_video[name=?]", "news[video]"
    end
  end
end
