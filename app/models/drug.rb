class Drug < ApplicationRecord
  has_many :users, through: :takes 

  validates :name, presence: true
end
