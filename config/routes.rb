Rails.application.routes.draw do
  get "/", to: 'home#top'
  devise_for :users
  resources :shrine_word_of_mouths
  resources :temple_word_of_mouths
  resources :temples
  resources :shrines
  resources :user_ids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"home#top"
end