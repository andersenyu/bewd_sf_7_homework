Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
  	get "/sign_in" => "devise/sessions#new", as: "sign_in"
  	get "/sign_up" => "devise/registrations#new", as: "sign_up"
  end

  root "welcome#home"
  
  resources :catalogs, only: [:index, :show]

  get '/etsy_request', to: 'catalogs#etsy_request', as: 'etsy_request'
end
