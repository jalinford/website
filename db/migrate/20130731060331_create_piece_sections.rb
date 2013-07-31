class CreatePieceSections < ActiveRecord::Migration
  def change
    create_table :piece_sections do |t|
      t.integer :piece_id
      t.string :title
      t.string :audio_mp3
      t.string :audio_wav
      t.string :audio_ogg
      t.string :youtube
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
