Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :questions do
    get 'answers', on: :member
  end

end
