class CreateSlideshows < ActiveRecord::Migration
  def change
    create_table :slideshows do |t|
      t.string :title
      t.text :description
      t.boolean :featured
      t.integer :priority

      t.timestamps
    end
  end
end
