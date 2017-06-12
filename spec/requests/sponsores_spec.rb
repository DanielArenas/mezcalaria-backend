require 'rails_helper'

RSpec.describe "Sponsores", type: :request do
  describe "GET /sponsores" do
    it "works! (now write some real specs)" do
      get sponsores_path
      expect(response).to have_http_status(200)
    end
  end
end
