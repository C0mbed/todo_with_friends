Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new'
  post 'users' => 'users#create'
  resources :users, only: [:new, :index]
end
