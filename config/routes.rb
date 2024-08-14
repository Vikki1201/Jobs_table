Rails.application.routes.draw do
  resources :jobs, only: [:create, :show, :index]
end
