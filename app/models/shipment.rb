# == Schema Information
#
# Table name: shipments
#
#  id          :integer          not null, primary key
#  box_id      :integer
#  name        :string(255)
#  ship_date   :date
#  has_shipped :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Shipment < ActiveRecord::Base
  attr_accessible :box_id, :name, :ship_date, :has_shipped
  has_many :items, :inverse_of => :shipment
  belongs_to :box, :inverse_of => :shipments
  after_save :has_shipped?
  after_find :has_shipped?

  def has_shipped?
    if self.ship_date < Date.current
      self.has_shipped == true
    else
      self.has_shipped == false
    end
  end

  # def is_current?
  #   if self.ship_date > Date.current
  #     true
  #   else
  #     false
  #   end
  # end
end
