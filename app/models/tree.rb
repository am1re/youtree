class Tree < ApplicationRecord
  belongs_to :user
  has_many :tree_events
end
