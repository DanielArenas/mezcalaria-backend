require 'rails_helper'

RSpec.describe "Magueyes", type: :request do
  describe "GET /magueyes" do
    it "works! (now write some real specs)" do
      get magueyes_path
      expect(response).to have_http_status(200)
    end
  end
end
