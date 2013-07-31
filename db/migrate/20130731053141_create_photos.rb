class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :photo
      t.date :date
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
