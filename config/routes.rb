Rails.application.routes.draw do
  devise_for :users
  devise_for :books
  root to: 'homes#top'
  get 'about' => 'homes#about', as:'about'
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end