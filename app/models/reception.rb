class Reception < ApplicationRecord
    validates :name, presence: true
    validates :purpose, presence: true
end
