Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: %i[index show] do
    resources :swaps, only: %i[new create]
  end
  resources :bookclubs, only: %i[index show]
end
