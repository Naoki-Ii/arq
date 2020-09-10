require 'rails_helper'

RSpec.describe Reception, type: :model do
  reception = FactoryBot.create(:reception)

  it 'receptionインスタンスが有効' do
    expect(reception).to be_valid
  end

  it 'nameがなければ無効' do
    reception.name = ''
    expect(reception).not_to be_valid
  end

  it 'purposeがなければ無効' do
    reception.purpose = ''
    expect(reception).not_to be_valid
  end
end
