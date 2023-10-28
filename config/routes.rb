Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'   # localhost:3000/welcome/index

  # resources: creates all the routes for the different actions we will add to our application
  resources :docs

  # for logged in users, can view their documents with authenticated_root
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  # localhost:3000 (for users who have not signed in yet!)
  root 'welcome#index'  

  





  # get "up" => "rails/health#show", as: :rails_health_check

end
