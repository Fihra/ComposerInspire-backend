class AddFieldToSongreference < ActiveRecord::Migration[5.2]
  def change
    add_reference :songreferences, :composition, foreign_key: true
  end
end
