Rails.application.routes.draw do

  
  
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
      devise_for :users, skip: :omniauth_callbacks

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


    # url 未加zh 自动跳转到默认的
    #match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
    #match '', to: redirect("/#{I18n.default_locale}")
end
