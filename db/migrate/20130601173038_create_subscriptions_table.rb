class CreateSubscriptionsTable < ActiveRecord::Migration
 def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :box_id
      t.boolean :is_active, :default => true
      t.timestamps
    end
  end
end