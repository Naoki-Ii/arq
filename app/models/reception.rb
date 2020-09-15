class Reception < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :purpose, presence: true
end
