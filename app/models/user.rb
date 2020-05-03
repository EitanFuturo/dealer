class User < ApplicationRecord
  has_many :drugs, through: :takes
  has_secure_password

  validates :name, :password_digest, presence: true
end
