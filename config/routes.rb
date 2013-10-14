Peculiartalk::Application.routes.draw do
  resources :storys
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:show]
  root to: 'sessions#new'
end
