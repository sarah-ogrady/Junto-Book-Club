Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: %i[index show new create destroy] do
    resources :swaps, only: %i[new create]
    member do
      get :genre
      get :confirmation
    end
  end
  resources :bookclubs, only: %i[index show]
end
