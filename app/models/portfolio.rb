class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # ruby way of custom scope
  def self.angular
    where(subtitle: "Angular")
  end 

  # rails way of custom scope, using lambda
  # scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  # another way of implementing custom routes with changeable default value
  # After a new portfolio item is initialised, add image by default 
  after_initialize :set_defaults
  
  def set_defaults 
    self.main_image ||= "https://via.placeholder.com/600x400" # || will respect existing image, not overwrite it
    self.thumb_image ||= "https://via.placeholder.com/350x200" # See || as an optional stop
  end
end


