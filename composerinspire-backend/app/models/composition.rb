class Composition < ApplicationRecord
  belongs_to :user
  has_many :songreferences
  has_many :scales
  has_many :jots
  has_many :instruments

  validates :title, presence: true, uniqueness: true  
end
