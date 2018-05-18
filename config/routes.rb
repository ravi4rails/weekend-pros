Rails.application.routes.draw do
  resources :skills
  root 'home#index'

  get "/skill-keyword" => "home#auto_complete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
