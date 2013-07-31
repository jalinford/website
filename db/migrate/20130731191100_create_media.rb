class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.boolean :featured
      t.string :website
      t.text :summary
      t.integer :priority

      t.timestamps
    end
  end
end
