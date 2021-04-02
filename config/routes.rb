Rails.application.routes.draw do
  resources :employies
  get 'page/index'
  devise_for :users
  root 'employies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
