class Channel < ApplicationRecord
    belongs_to :genre
    has_many :services, through: :genre
end
