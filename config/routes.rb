Rails.application.routes.draw do
  get 'welcome/index'   # localhost:3000/welcome/index
  root 'welcome#index'  # localhost:3000

  # resources: creates all the routes for the different actions we will add to our application
  resources :docs








  # get "up" => "rails/health#show", as: :rails_health_check

end
