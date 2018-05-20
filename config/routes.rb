Rails.application.routes.draw do
 root to: 'pages#home'
 get 'service', to: 'pages#service'
 resources :contacts, only: [:new, :create]
 get 'fill-out form', to: 'contacts#new'
end
