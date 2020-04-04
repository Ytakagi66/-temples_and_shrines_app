Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :shrines, only: [:index, :create, :new, :show]
  get "/", to: 'home#index'
  get "shrines",to: 'shrine#index'
  get "temples",to: 'temples#index'
  resources :shrine_word_of_mouths
  resources :temple_word_of_mouths
  resources :temples
  resources :shrines
  resources :user_ids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

