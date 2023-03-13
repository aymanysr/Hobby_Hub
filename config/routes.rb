Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :groups, only: [:index, :show, :create, :new]

  resources :groups do
    post "posts", to: "posts#create"
  end
  get "groups_filter", to: "groups#filter"
  put "join_group", to: "groups#join"
  put "leave_group", to: "groups#leave"
end
