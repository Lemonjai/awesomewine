Rails.application.routes.draw do
  
  # Create resources
  resources :reviews
  resources :events
  resources :wines

  # Set the Wines as root
  root 'wines#index'

end
