class Take < ApplicationRecord
  belongs_to :user
  belongs_to :drug

  validates :user, :drug, presence: true
end
