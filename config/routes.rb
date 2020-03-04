Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :my_swaps, to: 'pages#my_swaps'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: %i[index show] do
    resources :swaps, only: %i[new create]
  end
  resources :swaps, only: :show
  resources :bookclubs, only: %i[index show]
end
