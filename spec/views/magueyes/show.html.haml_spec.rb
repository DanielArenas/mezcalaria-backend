require 'rails_helper'

RSpec.describe "magueyes/show", type: :view do
  before(:each) do
    @magueye = assign(:magueye, Magueye.create!(
      :title => "Title",
      :sub_title => "Sub Title",
      :text => "",
      :image => "Image",
      :language => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Sub Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/1/)
  end
end
