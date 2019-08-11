class Composition < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
end
