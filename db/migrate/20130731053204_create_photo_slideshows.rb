class CreatePhotoSlideshows < ActiveRecord::Migration
  def change
    create_table :photo_slideshows do |t|
      t.integer :photo_id
      t.integer :slideshow_id

      t.timestamps
    end
  end
end
