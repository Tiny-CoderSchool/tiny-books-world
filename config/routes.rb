Rails.application.routes.draw do

  get 'users/index' => 'users#index'

  resources :books
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
