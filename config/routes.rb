Eldoorado::Application.routes.draw do
  resources :entrants, only: [ :index, :create, :show ]
  resources :companies, only: [ :index, :create, :show ]
  resources :doors, only: [ :index, :create, :show ]
  resources :badge_scans, only: [ :index, :create, :show ]
end
