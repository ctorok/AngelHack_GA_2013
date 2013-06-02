class CreateShipmentsTable < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :box_id
      t.string :name
      t.string :ship_date
      t.timestamps
    end
  end
end
