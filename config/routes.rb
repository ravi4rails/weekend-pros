Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations', 
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }
  root 'home#index'
  get "/skill-keyword" => "home#auto_complete"
  get 'search/search_pro'
  
  resources :users, only: [:show, :index], path: :professional


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
