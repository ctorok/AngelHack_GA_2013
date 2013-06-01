class CreateSubscriptionsTable < ActiveRecord::Migration
 def change
    create_table :subscriptions do |t|
      t.integer :customer_id
      t.integer :box_id
      t.boolean :is_active
      t.timestamps
  end
end
end
