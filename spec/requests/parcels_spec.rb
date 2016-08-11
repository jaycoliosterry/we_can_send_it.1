require 'rails_helper'

RSpec.describe "Parcels", type: :request do
  describe "GET /parcels" do
    it "works! (now write some real specs)" do
      get parcels_path
      expect(response).to have_http_status(200)
    end
  end
end
