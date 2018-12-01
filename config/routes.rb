Rails.application.routes.draw do
  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboards#show'

  # Root path should be after channel constraints
  #root to: 'projects#index'
  resources :articles do
  	resources :comments
  end

  resources :users, only: [:show, :edit, :update]
  resources :charges
  get 'pages/ho' => 'high_voltage/pages#show', id: 'home'
end
