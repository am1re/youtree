# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  tree_id     :integer          not null
#  kind        :string
#  description :text
#  happened_at :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
