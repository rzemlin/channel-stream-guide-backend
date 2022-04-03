class Genre < ApplicationRecord
    has_many :channels
    has_many :services, through: :channels
end
