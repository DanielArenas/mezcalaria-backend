require 'rails_helper'

RSpec.describe "news/show", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :tittle => "Tittle",
      :description => "MyText",
      :video => "Video"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tittle/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Video/)
  end
end
