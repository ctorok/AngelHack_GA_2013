# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ActiveRecord::Base
  attr_accessible :name
  belongs_to :item, :inverse_of => tags

end
