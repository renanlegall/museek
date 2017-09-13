Rails.application.routes.draw do
  get 'chatrooms/show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }



  resources :playlists, only: [ :index, :new, :create, :show] do
    resources :tracks, only: [:new, :create, :destroy], shallow: true
    collection do
    get 'top', to: "playlists#top"
    end
  end


  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
