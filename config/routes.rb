Rails.application.routes.draw do
  get 'feedbacks/new'
  get 'feedbacks/create'
  devise_for :users
  root to: "pages#home"
  resources :bookings
  resources :massages
  resources :users do
    resources :feedbacks, only: [:new, :create, :index, :destroy, :edit, :update]
  end
end
