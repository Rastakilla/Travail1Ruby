Rails.application.routes.draw do
  resources :clients
  #devise_for :users
  #get "/pages/*id" => 'pages#show', as: :page, format: false
  root to: 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
