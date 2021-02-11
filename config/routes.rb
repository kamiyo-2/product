Rails.application.routes.draw do
  resources :produts
  root 'produts#index'
end
