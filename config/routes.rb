Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions do
    resources :answers, only: [:create, :new]
  end
  resources :answers, exept: [:create, :new]
  resources :topics

  resources :users, only: :index do
    get :follow_user, on: :member
    get :follow_topic, on: :member
  end

  root "home#index"
end
