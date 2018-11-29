Rails.application.routes.draw do
  root to: 'home#index'
  resources :results
  devise_for :users
  resources :polls do
    resources :answers
  end
end
