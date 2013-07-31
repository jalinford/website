class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :featured
      t.text :summary
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
