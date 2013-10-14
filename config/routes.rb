Peculiartalk::Application.routes.draw do
  resources :storys
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'sessions#new'
end
