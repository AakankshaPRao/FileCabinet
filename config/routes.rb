Rails.application.routes.draw do
  get 'welcome/index'   # localhost:3000/welcome/index
  root 'welcome#index'  # localhost:3000








  # get "up" => "rails/health#show", as: :rails_health_check

end
