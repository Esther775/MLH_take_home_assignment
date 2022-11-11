Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/projects/seed/:id" => "projects#show"
  get "/projects/user" => "users#show"
end
