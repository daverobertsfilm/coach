Rails.application.routes.draw do

  resources :tour_statuses
root to: "tours#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
#Casein routes
namespace :casein do
    resources :subtours
    resources :tours
    resources :hotels
    resources :subhotels
end

resources :tours do
  resources :subtours
end

resources :hotels do
  resources :subhotels
end

end
