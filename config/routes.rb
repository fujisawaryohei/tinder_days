Rails.application.routes.draw do
  get 'following/follow'

  devise_for :users
  resources :users
  resources :posts

  resources :users do
    member do
      get :following, :followers
    end
  end

  root "home#home"
  get '/about' => 'about#about'
  resources :relationships,only: [:create, :destroy]

  get '/posts/:id/success' => 'posts#success' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
