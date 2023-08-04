Rails.application.routes.draw do
  root to: "questions#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :questions do
    resources :answers do
      resources :comments
    end
  end
  resources :info_oldusers
  resources :authentications

  resources :bestanswers

  resources :users, only: :show
end
