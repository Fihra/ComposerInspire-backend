class Composition < ApplicationRecord
  belongs_to :user
  has_many :songreferences
  has_many :scales

  validates :title, presence: true
end
