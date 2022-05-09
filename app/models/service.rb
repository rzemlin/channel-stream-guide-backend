class Service < ApplicationRecord
    has_many :channels, through: :genre
    has_many :genres
end
