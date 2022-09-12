# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  tree_id     :integer          not null
#  type        :string
#  description :text
#  happened_at :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :tree
end
