Rails.application.routes.draw do
  get 'messages/create'

  get 'chatrooms/show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }



  resources :playlists do
    resources :tracks, shallow: true
    resources :messages, only: [ :create ]
    collection do
    get 'top', to: "playlists#top"
    end
  end
resources :upvotes, only: [ :create, :destroy ]

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
