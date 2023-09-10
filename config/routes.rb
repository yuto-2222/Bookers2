Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  get '/homes/about' => 'homes#about', as: 'about'
  post '/users/:id' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# , only: [:create, :index, :show, :edit, :update, :destroy]