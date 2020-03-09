Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :my_swaps, to: 'pages#my_swaps'

  get :my_bookclub, to: 'pages#my_bookclub'


  get :my_books, to: 'pages#my_books'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: %i[index show new create destroy] do
    resources :swaps, only: %i[new create]
    member do
      get :genre
      get :confirmation
    end
  end
  resources :swaps, only: :show do
    member do
      get :chatroom
      get :choose_book
      patch :book_chosen
    end
    resources :messages, only: :create
  end
  resources :bookclubs, only: %i[index show] do
    get :confirmation
  end
end
