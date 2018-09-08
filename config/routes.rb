Rails.application.routes.draw do
  root'pages#home'
  get 'about', to: 'pages#about'

  resources :users, except: [:new]
  get 'signup', to: 'users#new'

  resources :articles 
  # the resources function automatically generates the routes.
  # Exemple : 'ressources :posts' generates this :

  # get    '/posts'          => 'posts#index'
  # get    '/posts/new'      => 'posts#new'
  # get    '/posts/:id'      => 'posts#show'
  # post   '/posts'          => 'posts#create'
  # get    '/posts/:id/edit' => 'posts#edit'
  # patch  '/posts/:id'      => 'posts#update'
  # put    '/posts/:id'      => 'posts#update'
  # delete '/posts/:id'      => 'posts#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
