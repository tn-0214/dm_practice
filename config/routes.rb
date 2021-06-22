Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:index, :show]
  root "users#index"
  resources :messsages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
end