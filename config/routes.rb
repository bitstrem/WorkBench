Workbench::Application.routes.draw do
  resources :parts

  resources :part_companies

  resources :models

  resources :types

  resources :brands

  devise_for :users

   get "users/new"
   match '/admin', :to => 'pages#admin'
   match '/about',   :to => 'pages#about'
   match '/help',    :to => 'pages#help'
   match '/customer', :to => 'pages#customer'
   match '/tech',   :to => 'pages#tech'
   match '/service',    :to => 'pages#service'
   match '/billing', :to => 'pages#billing'
   root :to => 'pages#home'
end
