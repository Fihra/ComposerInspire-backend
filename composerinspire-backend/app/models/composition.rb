class Composition < ApplicationRecord
  belongs_to :user
  has_many :songreferences
  has_many :scales
  has_many :jots

  validates :title, presence: true
end
