Rails.application.routes.draw do
  root 'pages#homepage'
  
  resources :stores do
    resources :items
  end
  
  # get   '/stores' => 'stores#index'
  # get   '/stores/new' => 'stores#new', as: 'new_store'
  # post  '/stores' => 'stores#create'
  # get   '/stores/:id' => 'stores#show', as: 'store'
  # get   '/stores/:id/edit' => 'stores#edit', as: 'edit_store'
  # patch  '/stores/:id' => 'stores#update'
  # delete '/stores/:id' => 'stores#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
