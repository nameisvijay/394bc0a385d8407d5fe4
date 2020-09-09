Rails.application.routes.draw do
  get 'relationships/create'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index, :show] do
    resources :answers, only: :index
  end
  resources :topics, only: [:index]
  resources :interests, only: [:create]
  resources :relationships, only: [:create]
  root to: "questions#index"
end
