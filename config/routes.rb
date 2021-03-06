Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cups#index'
  get '/cups' => 'cups#index', as: 'cups'
  get '/cups/new' => 'cups#new', as: 'new_cup'
  post '/cups' => 'cups#create'
  get '/cups/:id' => 'cups#show' , as: 'cup'
  get '/cups/:id/edit' => 'cups#edit', as: 'edit_cup'
  patch '/cups/:id' => 'cups#update'
  delete '/cups/:id' => 'cups#destroy'


  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'


  get '/cups/:cup_id/customers' => 'customers#index', as: 'cup_customers'
  get '/cups/:cup_id/customers/new' => 'customers#create', as: 'new_cup_customer'
  post '/cups/:cup_id/customers' => 'customers#create'
end
