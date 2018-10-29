Rails.application.routes.draw do
  resources :donuts, only: [:index, :show, :new, :create]
end
