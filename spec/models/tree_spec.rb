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
require 'rails_helper'

RSpec.describe Tree, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
