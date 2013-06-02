class CreateItemsTable < ActiveRecord::Migration
 def change
    create_table :items do |t|
      t.integer :shipment_id
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end