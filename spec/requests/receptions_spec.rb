require 'rails_helper'

RSpec.describe "Receptions", type: :request do
  describe "GET /receptions/new" do
    it "receptions/new へアクセスできる" do
      get new_reception_path
      expect(response).to have_http_status(:success)
    end
  end
end
