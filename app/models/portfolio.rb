class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # ruby way of custom scope
  def self.angular
    where(subtitle: "Angular")
  end 

  # rails way of custom scope, using lambda
  # scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }
end
