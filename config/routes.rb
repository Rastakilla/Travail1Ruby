Rails.application.routes.draw do
resources :projects
  devise_for :users
  get "/pages/*id" => 'pages#show', as: :page, format: false
  root to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
