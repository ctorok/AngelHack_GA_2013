# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  box_id      :integer
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  attr_accessible :box_id, :name, :description
  belongs_to :box, :inverse_of => :items
  has_many :tags, :inverse_of => :item
end
