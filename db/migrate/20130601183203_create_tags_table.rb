class CreateTagsTable < ActiveRecord::Migration
 def change
    create_table :tags do |t|
      t.integer :item_id
      t.string :name
      t.timestamps
  end
end
end
