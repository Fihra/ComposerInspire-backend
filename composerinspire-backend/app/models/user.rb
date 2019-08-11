class User < ApplicationRecord
    has_many :compositions

    validates :name, presence: true, uniqueness: true
end
