Rails.application.routes.draw do
  root to: "questions#index"
  devise_for :users
  resources :questions
  resources :answers
  resources :info_oldusers
  resources :authentications
  resources :comments
end
