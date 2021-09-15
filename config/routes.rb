Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/users/:id' => 'users#show', as: 'user'
  resources :posts, only: %i[new create index show destroy] do
    resources :photos, only: %i[create]
  end
end
