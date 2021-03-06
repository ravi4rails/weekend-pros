Rails.application.routes.draw do
  resources :lectures
  resources :courses
  resources :videos
  resources :articles do
    resources :comments 

    #   collection do
    #     post :create_reply
    #   end
    # end 
  end  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations', 
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }
  match '/professional-listing/:param', to: 'home#pro_listing', via: [:get]
  root 'home#index'
  get "/portfolio" => "home#portfolio"
  get "/skill-keyword" => "home#auto_complete"
  get 'search/search_pro'
  get '/professional-listing' => "home#pro_listing"
  #post '/create_comment' => "articles#create_comment"
  resources :users, only: [:show, :index], path: :professional
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
