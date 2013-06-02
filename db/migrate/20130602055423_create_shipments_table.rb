class CreateShipmentsTable < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :box_id
      t.string :name
      t.date :ship_date
      t.boolean :has_shipped
      t.timestamps
    end
  end
end
