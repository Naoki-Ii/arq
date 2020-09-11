require 'rails_helper'

RSpec.feature "Receptions", type: :feature do
  reception = FactoryBot.create(:reception)

  xit '[new]にアクセス可' do
    visit new_reception_path
    expect(page).to have_current_path('receptions/new')
  end

  xit 'post後記入項目が足りていれば、サクセスメッセージがでる' do
  end

  xit 'post後記入項目が不足していたら、エラーメッセージが出る' do
  end
end
