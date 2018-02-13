Rails.application.routes.draw do
  get 'clients/new'

  get 'clients/create'

  get 'clients/update'

  get 'clients/edit'

  get 'clients/destroy'

  get 'clients/index'

  get 'clients/show'

resources :projects
  devise_for :users
  get "/pages/*id" => 'pages#show', as: :page, format: false
  root to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
