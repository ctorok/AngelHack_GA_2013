# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address         :string(255)
#  creditcard_id   :string(255)
#  frequency       :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Customer < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :address, :creditcard_id, :frequency, :password, :password_confirmation

  has_many :subscriptions, :inverse_of => :customer

end
