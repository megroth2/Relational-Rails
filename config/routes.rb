Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # root "articles#index"
  
  get "/resorts", to: "resorts#index"
  get "/resorts/:id", to: "resorts#show"
  # get "/lifts", to: "lifts#index"
end