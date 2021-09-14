Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get '/users/:id' => 'users#show', as: 'user'
end
