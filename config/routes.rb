Rails.application.routes.draw do
  devise_for :users
  resources :polls do
    resources :answers
  end
end
