Rails.application.routes.draw do
  # Generates full list of restful routes for /people
  resources :people

  root to: 'people#index'
end
