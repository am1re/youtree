# == Schema Information
#
# Table name: trees
#
#  id          :integer          not null, primary key
#  longitude   :float
#  latitude    :float
#  description :text
#  visible     :boolean
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Tree < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :requests
end
