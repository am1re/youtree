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
require 'rails_helper'

RSpec.describe Request, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
