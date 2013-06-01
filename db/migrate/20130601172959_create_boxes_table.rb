class CreateBoxesTable < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :store_id
      t.string :name
      t.string :description
      t.string :frequency
      t.date :ship_date
      t.decimal :price
      t.string :img_lg
      t.string :img_sm
      t.timestamps
  end
end
end
