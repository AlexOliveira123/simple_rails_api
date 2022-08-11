Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  scope 'v1' do 
    scope 'users' do
      post 'create', to: 'users#create'
      get 'show/:id', to: 'users#show'
      get 'show_all', to: 'users#show_all'
      put 'update/:id', to: 'users#update'
    end
  end
end
