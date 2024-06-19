Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  
  resources :post_images, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
