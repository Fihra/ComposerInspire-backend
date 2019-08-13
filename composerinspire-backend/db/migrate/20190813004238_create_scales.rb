class CreateScales < ActiveRecord::Migration[5.2]
  def change
    create_table :scales do |t|
      t.string :scale_name
      t.references :composition, foreign_key: true

      t.timestamps
    end
  end
end
