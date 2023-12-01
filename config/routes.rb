Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # root "articles#index"
  
  # Read
  get "/resorts", to: "resorts#index"
  get "/resorts/:id", to: "resorts#show"
  get "/resorts/:resort_id/lifts", to: "resorts#lifts"

  get "/lifts", to: "lifts#index"
  get "/lifts/:id", to: "lifts#show"

  # Create
  get "/resorts/new", to: "resorts#new"#, as: :new_resort
  post "/resorts", to: "resorts#create"

  # Update
  get "/resorts/:id/edit", to: "resorts#edit"
  patch "/resorts/:id", to: "resorts#update"

end