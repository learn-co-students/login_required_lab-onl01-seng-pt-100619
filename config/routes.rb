Rails.application.routes.draw do
  get 'secrets/show'

  get 'secrets/index'

  get 'secrets/create'

  get 'sessions/show'

  get 'sessions/index'

  get 'sessions/create'

  get 'sessions/new'

  post 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
