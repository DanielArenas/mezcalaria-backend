require 'rails_helper'

RSpec.describe "sponsores/show", type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, Sponsor.create!(
      :name => "Name",
      :address => "Address",
      :email => "Email",
      :web_page => "Web Page",
      :description => "MyText",
      :logo => "Logo",
      :outstanding => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Web Page/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/false/)
  end
end
