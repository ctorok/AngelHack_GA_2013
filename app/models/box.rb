# == Schema Information
#
# Table name: boxes
#
#  id          :integer          not null, primary key
#  store_id    :integer
#  name        :string(255)
#  description :string(255)
#  frequency   :string(255)
#  ship_date   :date
#  price       :decimal(, )
#  img_lg      :string(255)
#  img_sm      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  item_id     :integer
#

class Box < ActiveRecord::Base
  attr_accessible :store_id, :name, :description, :frequency, :ship_date, :price, :img_lg, :img_sm, :item_id
  belongs_to :store
  has_many :items
  has_many :subscriptions
end
