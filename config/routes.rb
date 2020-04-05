Rails.application.routes.draw do
  resources :shrines, only: [:index, :create, :new, :show]
  get "/", to: 'home#index'
  get "shrines",to: 'shrine#index'
  get "temples",to: 'temples#index'
  resources :shrine_word_of_mouths
  resources :temple_word_of_mouths
  resources :temples
  resources :shrines
  resources :user_ids
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'users/home' => 'users/registrations#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

