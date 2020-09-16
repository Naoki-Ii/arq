require 'rails_helper'

RSpec.describe "Receptions", type: :request do
  describe "" do
    xit "GET /receptions/new" do
      get new_reception_path
      expect(response).to have_http_status(:success)
    end

    xit "POST /receptions -成功" do
      expect do
        post receptions, params: {
          reception: {
            name: 'tanaka taro',
            purpose: '面談',
          }
        }
      end.to change(Reception, :count).by(1)
      expect(response.status).to eq 302
    end

    xit "POST /receptions - 失敗" do
      expect do
        post receptions, params: {
          reception: {
            name: '',
            purpose: '',
          }
        }
      end.to change(Reception, :count).by(0)
      expect(response.status).to eq 302
    end

    xit "GET /receptions" do
      get receptions_path
      expect(response).to have_http_status(:success)
    end
  end
end
