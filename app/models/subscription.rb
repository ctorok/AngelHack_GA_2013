# == Schema Information
#
# Table name: subscriptions
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  box_id      :integer
#  is_active   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :box_id, :customer_id, :is_active
  belongs_to :box, :inverse_of => :subscriptions
  belongs_to :customer, :inverse_of => :subscriptions

end
