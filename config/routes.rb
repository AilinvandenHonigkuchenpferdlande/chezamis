Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :pages do
    collection do
      post 'add_friend/:id', to: 'pages#add_friend', as: :add_friend
      post 'accept_friend/:id', to: 'pages#accept_friend', as: :accept_friend
      delete 'decline_friend/:id', to: 'pages#decline_friend', as: :decline_friend
    end
  end


  resources :homes

end
