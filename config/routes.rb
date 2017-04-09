Rails.application.routes.draw do
	root 'cities#index'
  resources :citycleaners
  resources :bookings
  resources :cities
  resources :cleaners
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
