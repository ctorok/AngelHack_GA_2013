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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  item_id     :integer
#

class Box < ActiveRecord::Base
  attr_accessible :store_id, :name, :description, :frequency
  belongs_to :store, :inverse_of => :boxes
  has_many :items, :inverse_of => :box
  has_many :subscriptions, :inverse_of => :box
end
