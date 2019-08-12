class CreateSongreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :songreferences do |t|
      t.string :song_title
      t.string :artist
      t.string :youtube_url

      t.timestamps
    end
  end
end
