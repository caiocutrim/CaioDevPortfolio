module PortfoliosHelper
  def image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img
      img
    elsif type == 'thumb'
      image_generator(height: '400', width:'225')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end
