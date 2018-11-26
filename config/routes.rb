Rails.application.routes.draw do
  resources :polls do
    resources :answers
  end
end
