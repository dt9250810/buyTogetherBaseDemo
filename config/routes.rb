Rails.application.routes.draw do
  root 'pages#homepage'

  get '/stores' => 'stores#index'

  get '/stores/new' => 'stores#new'
  post '/stores' => 'stores#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
