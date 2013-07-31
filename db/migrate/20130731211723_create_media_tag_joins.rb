class CreateMediaTagJoins < ActiveRecord::Migration
  def change
    create_table :media_tag_joins do |t|
      t.integer :media_tag_id
      t.integer :media_id

      t.timestamps
    end
  end
end
