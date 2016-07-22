Rails.application.routes.draw do

  devise_for :users, controllers: { confirmations: 'confirmations', passwords: 'passwords', registrations: 'registrations', sessions: 'sessions' }

  ActiveAdmin.routes(self)

  root to: 'pages#home'

  resources :contacts

end
