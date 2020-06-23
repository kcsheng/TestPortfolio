class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all # calling the model and making it available for the view
  end
end
