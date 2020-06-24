Rails.application.routes.draw do
  resources :portfolios, except: [:show] 
  # change display of portfolios/id to portfolio/id
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"
  
  # customised-originally: get "pages/about"  
  get "about-me", to: "pages#about" # set address as /about, not pages/about
  # originally: get "pages/contact"
  get "contact", to: "pages#contact"

  root to: "pages#home" # move the home page to root, not the server welcome page
  # use rails routes for any changes in routes.rb in config

  resources :blogs
end
