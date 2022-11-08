class Membership < ApplicationRecord
  validates :charge, presence: true

  belongs_to :gym
  belongs_to :client
  
end
