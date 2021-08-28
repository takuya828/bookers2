Rails.application.routes.draw do
  devise_for :users
  devise_for :books
  root to: 'homes#top'
  get 'about' => 'homes#about', as:'about'
  resources :users, only: [:show, :edit, :update, :index, :new, :create]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end