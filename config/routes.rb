Rails.application.routes.draw do
  get 'search/search_pro'

  root 'home#index'
  get "/skill-keyword" => "home#auto_complete"
  
  devise_for :users, controllers: {
    confirmations: 'users/confirmations', 
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
  
  resources :skills


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
