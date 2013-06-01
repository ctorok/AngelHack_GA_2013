class AddItemIdToBoxesTable < ActiveRecord::Migration
  def change
    add_column :boxes, :item_id, :integer
  end
end
