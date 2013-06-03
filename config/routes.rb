Fern::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end

  resources :manage_users, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  resources :home, only: [:index]
  resources :manage_foods
  # do
  #   member do
  #     get :test
  #   end

  #   collection do
  #     get :done
  #     post :correct
  #   end
  # end
  root to: "home#index"

  get "/" => redirect("/login")
end
