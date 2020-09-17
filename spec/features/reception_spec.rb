require 'rails_helper'

RSpec.describe "Receptions", type: :feature do
  reception = FactoryBot.create(:reception)

  it '[new]にアクセス可' do
    visit new_reception_path
    expect(page).to have_current_path('/receptions/new')
  end

  xit 'post後記入項目が足りていれば、サクセスメッセージがでる' do
    visit new_reception_path
    fill_in 'reception[name]', with: 'tanaka'
    select 'reception[purpose]', from: '面談'
    click_on '送信'
    expect(page).to have_content '完了'
  end

  xit 'post後記入項目が不足していたら、エラーメッセージが出る' do
    visit new_reception_path
    fill_in 'reception[name]', with: ''
    fill_in 'reception[purpose]', with: ''
    expect(page).to have_content '記入'
  end
end
