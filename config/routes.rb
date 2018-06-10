Rails.application.routes.draw do
 root to: 'pages#home'
 get 'service', to: 'pages#service'
 get 'message', to: 'pages#message'
 resources :contacts, only: [:new, :create]
 get 'fill-out', to: 'contacts#new'
end
