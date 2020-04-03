Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  root :to => 'sessions#new'
  get 'sessions/destroy'
  get 'secrets/show'
end
