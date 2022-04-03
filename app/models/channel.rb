class Channel < ApplicationRecord
    belongs_to :genre
    has_many :services
end
