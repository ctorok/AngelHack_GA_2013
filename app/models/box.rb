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
  has_many :items, :inverse_of => :box
  has_many :subscriptions, :inverse_of => :box
end
