class Composition < ApplicationRecord
  belongs_to :user
  has_many :songreferences

  validates :title, presence: true
end
