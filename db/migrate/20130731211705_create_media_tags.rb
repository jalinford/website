class CreateMediaTags < ActiveRecord::Migration
  def change
    create_table :media_tags do |t|
      t.string :title
      t.boolean :featured
      t.boolean :author

      t.timestamps
    end
  end
end
