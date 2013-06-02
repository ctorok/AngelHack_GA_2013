# == Schema Information
#
# Table name: boxes
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string(255)
#  description :string(255)
#  frequency   :string(255)
#  ship_date   :date
#  price       :decimal(, )
#  img_lg      :string(255)
#  img_sm      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Box < ActiveRecord::Base
  attr_accessible :user_id, :name, :description, :ship_date, :frequency, :price, :img_lg, :img_sm
  belongs_to :user, :inverse_of => :boxes
  has_many :shipments, :inverse_of => :box
  has_many :subscriptions, :inverse_of => :box

  def is_subscribed?(user)
	  user.id.in?(self.subscriptions.map(&:user_id))
  end

  def is_owner?(user)
  	user == self.user
  end

  def current_shipment
    if self.shipments.where(:has_shipped => false).last.present?
      self.shipments.where(:has_shipped => false).last
    end
  end

  def last_shipment_sent
    if self.shipments.where(:has_shipped => true).order(:created_at).reverse.last.present?
      self.shipments.where(:has_shipped => true).order(:created_at).reverse.last
    end
  end
end
