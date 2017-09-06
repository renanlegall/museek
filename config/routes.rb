Rails.application.routes.draw do
  get 'playlists/index'

  get 'playlists/show'

  get 'playlists/create'

  get 'playlists/edit'

  get 'playlists/update'

  get 'playlists/destroy'

  get 'tracks/index'

  get 'tracks/show'

  get 'tracks/edit'

  get 'tracks/update'

  get 'tracks/destroy'

  get 'tracks/create'

  root to: 'pages#home'

    devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
