class ApplicationController < ActionController::Base
  include DeviseWhiteList

  before_action :visit_from
  def visit_from
    session[:source] = params[:q] if params[:q]
  end

end
