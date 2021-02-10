Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A visitor can see the list of all restaurants.
  resources :restaurants, only: [ :index, :create, :new, :show ] do
    resources :reviews, only: [ :create, :new, :show ]
  end
end
