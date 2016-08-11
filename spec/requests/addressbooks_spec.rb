require 'rails_helper'

RSpec.describe "Addressbooks", type: :request do
  describe "GET /addressbooks" do
    it "works! (now write some real specs)" do
      get addressbooks_path
      expect(response).to have_http_status(200)
    end
  end
end
