class Tree < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :requests
end
