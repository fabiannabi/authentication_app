Rails.application.routes.draw do
  resources :session, only: [:create]

  root to: 'static#home'
end
