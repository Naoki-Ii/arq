require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  let(:room) { FactoryBot.create(:room) }

  describe "ログイン機能" do
    it "ログインページにアクセスできる" do
      get login_path
      render_template login_path
    end

    it "ログインすると、ログアウトできる" do
      get login_path
      post login_path, params: {
        session: {
          name: room.name,
          password: room.password
        }
      }
      delete logout_path
      render_template login_path
    end
  end
end
