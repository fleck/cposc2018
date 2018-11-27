Rails.application.routes.draw do
  resources :results
  devise_for :users
  resources :polls do
    resources :answers
  end
end
