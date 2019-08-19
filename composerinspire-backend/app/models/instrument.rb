class Instrument < ApplicationRecord
    belongs_to :composition

    # validates :instrument_name, uniqueness: true
end
