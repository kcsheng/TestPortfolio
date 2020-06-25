class Skill < ApplicationRecord
  validates_presence_of :title, :precent_utilised
end
