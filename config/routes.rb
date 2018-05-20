Rails.application.routes.draw do
 root to: 'pages#home'
 get 'service', to: 'pages#service'
 resources :contacts
 get 'подать-зоявку', to: 'contacts#new'
end
