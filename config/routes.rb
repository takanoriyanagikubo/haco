Rails.application.routes.draw do


  devise_for :users
  root to: 'boxes#index'

  resources :boxes do
    resources :items, only: [ :create, :show, :new, :destroy, :update, :edit, :index ]
  end
  
  resources :users, only: [ :show, :index]

end
