class CreateJots < ActiveRecord::Migration[5.2]
  def change
    create_table :jots do |t|
      t.string :content
      t.references :composition, foreign_key: true

      t.timestamps
    end
  end
end
