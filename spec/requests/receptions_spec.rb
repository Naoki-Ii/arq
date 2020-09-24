require 'rails_helper'

RSpec.describe "Receptions", type: :request do
  let(:room) { FactoryBot.create(:room) }

  describe "受付新規登録" do
    it "GET /receptions/new" do
      get new_reception_path
      expect(response).to have_http_status(:success)
    end

    it "POST /receptions -成功" do
      expect do
        post receptions_path, params: {
          reception: {
            name: 'tanaka taro',
            purpose: '面談',
          }
        }
      end.to change(Reception, :count).by(1)
      expect(response.status).to eq 302
    end

    it "POST /receptions - 失敗" do
      expect do
        post receptions_path, params: {
          reception: {
            name: '',
            purpose: '',
          }
        }
      end.to change(Reception, :count).by(0)
      expect(response.status).to eq 302
    end
  end

  describe "受付一覧画面" do
    it "未ログイン時　一覧画面にアクセスするとリダイレクトされる" do
      get receptions_path
      expect(response.status).to eq 302
    end

    it "ログイン後　一覧画面にアクセスできる"  do
      get login_path
      post login_path, params: {
        session: {
          name: room.name,
          password: room.password
        }
      }
      get receptions_path
      expect(response.status).to eq 200
    end
  end
end
