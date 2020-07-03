class Topic < ApplicationRecord # This model establish a relationship.
  validates_presence_of :title

  has_many :blogs
end
