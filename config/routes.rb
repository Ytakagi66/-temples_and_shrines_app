Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
  root to: "home#index"
>>>>>>> 0fa44c41fa40d9564c1b13388bd8a9df3f581a7b
  resources :shrines, only: [:index, :create, :new, :show]
  get "/", to: 'home#index'
  get "shrines",to: 'shrine#index'
  get "temples",to: 'temples#index'
  resources :shrine_word_of_mouths
  resources :temple_word_of_mouths
  resources :temples
  resources :shrines
  resources :user_ids
<<<<<<< HEAD
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'users/home' => 'users/registrations#home'
  end
=======
>>>>>>> 0fa44c41fa40d9564c1b13388bd8a9df3f581a7b
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

