class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all # calling the model and making it available for the view
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        # redirect browser to the full list of Portfolio, same as: portfolios
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live!' }
      else
        format.html { render :new }
      end
    end
  end
end
