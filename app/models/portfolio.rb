class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs["name"].blank? }
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  # ruby way of custom scope
  def self.angular
    where(subtitle: "Angular")
  end 
  
  def self.by_position
    order("position ASC")
  end

  # rails way of custom scope, using lambda
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  # another way of implementing custom routes with changeable default value
  # After a new portfolio item is initialised, add image by default 
  after_initialize :set_defaults
  
  def set_defaults 
    self.main_image ||= Placeholder.image_generator(height:"600", width:"400") # || will respect existing image, not overwrite it
    self.thumb_image ||= Placeholder.image_generator(height:"350", width:"200") # See || as an optional stop
  end
end


