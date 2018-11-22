Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  # Root path should be after channel constraints
  #root to: 'projects#index'
  resources :articles
  resources :charges
  get 'pages/ho' => 'high_voltage/pages#show', id: 'home'
end
