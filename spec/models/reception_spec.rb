require 'rails_helper'

RSpec.describe Reception, type: :model do
  reception = FactoryBot.create(:reception)

  it 'receptionインスタンスが有効' do
    expect(reception).to be_valid
  end

  it 'nameの値が１文字以上なければ無効' do
    reception.name = ''
    expect(reception).not_to be_valid
  end

  it 'nameが50文字以上は無効' do
    reception.name = 'a' * 51
    expect(reception).not_to be_valid
  end

  it 'purposeがなければ無効' do
    reception.purpose = ''
    expect(reception).not_to be_valid
  end
end
