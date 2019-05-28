require 'rails_helper'

RSpec.describe "Wares", type: :request do
  describe "GET /wares" do
    it "works! (now write some real specs)" do
      get wares_path
      expect(response).to have_http_status(200)
    end
  end
end
