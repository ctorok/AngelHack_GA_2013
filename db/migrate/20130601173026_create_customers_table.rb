class CreateCustomersTable < ActiveRecord::Migration
 def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :creditcard_id
      t.string :frequency
      t.string :password_digest
      t.string :image
      t.timestamps
  end
end
end
