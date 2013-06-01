class CreateStoresTable < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :industry
      t.string :email
      t.timestamps
  end
end
end
