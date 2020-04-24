Rails.application.routes.draw do
get '/login', to: "sessions#new"
post '/login', to: "sessions#create"
get '/secret', to: "secrets#show"
post '/logout', to: "sessions#destroy"
end
