class Room < ApplicationRecord
  #VALID_NAME_REGEXは名前の命名制限-半角アルファベットの小文字のみ
  VALID_NAME_REGEX = /[a-z]/
  validates :name, presence: true, length: { maximum: 50 }, format: { with: VALID_NAME_REGEX }
end
