Rails.application.routes.draw do
  resources :temples_word_of_mouths
  resources :shrines_word_of_mouths
  resources :temples
  resources :user_ids
  resources :shrines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
