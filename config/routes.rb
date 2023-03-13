Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :groups, only: [:index, :show, :create, :new]

  resources :groups
  get "groups_filter", to: "groups#filter"
end
