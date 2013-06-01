class AddBoxIdToStore < ActiveRecord::Migration
  def change
    add_column :stores, :box_id, :integer
  end
end
