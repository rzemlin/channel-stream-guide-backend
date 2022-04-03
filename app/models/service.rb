class Service < ApplicationRecord
    has_many :channels
    has_many :genres, through: :channels
end
