# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  status     :string
#  tree_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Request < ApplicationRecord
  belongs_to :tree
end
