Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"

  resources :questions do
    get 'answers', on: :member
    resources :answers
  end

end
