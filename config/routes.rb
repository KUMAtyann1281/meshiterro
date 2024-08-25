Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  get 'homes/about', to: 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"

end
