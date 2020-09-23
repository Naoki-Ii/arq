require 'rails_helper'

RSpec.describe Room, type: :model do
  room = FactoryBot.create(:room)

  it 'roomインスタンスが有効' do
    expect(room).to be_valid
  end

  it 'nameの値が１文字以上なければ無効' do
    room.name = ''
    expect(room).not_to be_valid
  end

  it 'nameが50文字以上は無効' do
    room.name = 'a' * 51
    expect(room).not_to be_valid
  end

  it 'nameに半角アルファベット以外が含まれていたら無効' do
    room.name = '日本語'
    expect(room).not_to be_valid
  end
end
