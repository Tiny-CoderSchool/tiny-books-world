Rails.application.routes.draw do
  resources :transactions
  get 'users/index', to: 'users#index'
  resources :shelves
  resources :books do
    member do
      get 'borrow'
      get 'borrow'
    end
  end

  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'book_shelf', to: 'book_shelf#index'
  post 'book_shelf/remove_book', to: 'book_shelf#remove_book'
  post 'book_shelf/add_book', to: 'book_shelf#add_book'
end
