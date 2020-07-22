class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
    # @portfolio_items = Portfolio.angular  
    # @portfolio_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    # refactor this later
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        # redirect browser to the full list of Portfolio, same as: portfolios
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live!' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
    # destroy the reciord
    @portfolio_item.destroy
    # redirect instructions
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Record was removed." }
    end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body,
                                        technologies_attributes: [:name]
                                        )
    end
end
