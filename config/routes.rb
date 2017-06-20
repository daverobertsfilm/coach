Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  #resources :tour_statuses
  root to: "tours#index", as: :tour

  devise_for :admin_users, ActiveAdmin::Devise.config

#Casein routes
# namespace :casein do
#     resources :subtours
#     resources :tours
#     resources :hotels
#     resources :subhotels
# end

# resources :tours do
#   resources :subtours
# end

# resources :hotels do
#   resources :subhotels
# end

end
