module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end  

  def portfolio_img(image, type)
    if image.model.main_image? || image.model.thumb_image?
      image
    elsif type == "thumb"
      image_generator(height: 350, width: 200)
    elsif type == "main"
      image_generator(height: 600, width: 400)
    end
  end
end
