class User < ApplicationRecord
  has_secure_password

  has_many :channels, dependent: :destroy

  validates :email, uniqueness: { case_sensitive: false }
end
