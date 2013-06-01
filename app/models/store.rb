# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  industry   :string(255)
#  email      :string(255)
#  logo       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  box_id     :integer
#

class Store < ActiveRecord::Base
  attr_accessible :name, :address, :industry, :email, :logo
  has_many :boxes

end
