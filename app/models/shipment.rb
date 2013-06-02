# == Schema Information
#
# Table name: shipments
#
#  id         :integer          not null, primary key
#  box_id     :integer
#  name       :string(255)
#  ship_date  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shipment < ActiveRecord::Base
  attr_accessible :box_id, :name, :ship_date
  has_many :items, :inverse_of => :shipment
  belongs_to :box, :inverse_of => :shipments
end
