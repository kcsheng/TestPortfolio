# concerns have to be data-related. Here it is used to DRY code.
# can be used as a center to streamline code.

module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end