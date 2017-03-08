Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"

  resources :questions do
    get 'answers', on: :member
    resources :answers
  end

  resources :users, only: [] do
    resources :answers
  end

  resources :allowed_user_viewers, only: [:new, :create]
  get "/form_complete", to: "allowed_user_viewers#form_complete"
end
