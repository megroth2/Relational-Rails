Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # root "articles#index"
  
  get "/resorts", to: "resorts#index"
  get "/resorts/new", to: "resorts#new"
  post "/resorts", to: "resorts#create"
  get "/resorts/:id", to: "resorts#show"
  get "/resorts/:resort_id/lifts", to: "resorts#lifts"
  get "/resorts/:id/edit", to: "resorts#edit"
  patch "/resorts/:id", to: "resorts#update"

  get "/lifts", to: "lifts#index"
  get "/lifts/:id", to: "lifts#show"
end