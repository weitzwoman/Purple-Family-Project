Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :surveys do
    get 'answers', on: :member
  end
  
end
