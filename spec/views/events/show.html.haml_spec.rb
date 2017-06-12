require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Name",
      :place => "Place",
      :baner => "Baner",
      :is_free => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Baner/)
    expect(rendered).to match(/false/)
  end
end
