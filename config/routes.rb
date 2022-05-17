Rails.application.routes.draw do
  get 'posts/index'
  root 'users#index'
  get 'signup', to: 'users#new', as: 'signup'
  post 'users/create', to: 'users#create', as: 'users_create'
  get 'posts/new'
  post 'posts/create', to: 'posts#create', as: 'posts_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
