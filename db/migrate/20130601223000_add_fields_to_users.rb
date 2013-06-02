class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :logo, :string
    add_column :users, :cc_id, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
