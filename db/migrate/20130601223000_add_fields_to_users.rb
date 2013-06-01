class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :logo, :string
    add_column :users, :cc_id, :string
  end
end
