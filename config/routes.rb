Rails.application.routes.draw do
  root to: 'posts#index' 
  # get 'posts/new', to: 'posts#new' ←削除
  post 'posts', to: 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/:id', to: 'posts#checked'
end