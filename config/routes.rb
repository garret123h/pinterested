Rails.application.routes.draw do
  resources :pins
  devise_for :users
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/faq'
  root 'pins#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
