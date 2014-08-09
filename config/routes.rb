Hds::Application.routes.draw do

  resources :orders

  resources :orders_builder do
    resources :build, controller: 'orders_builder/build'
  end

  #get "users/index"
  #get "users/show"

  resources :addresses
  resources :address

  resources :customers

  resources :order_types

  resources :districts

  resources :cities do
    resources :districts, only: [:index]
  end


  devise_for :users
  resources :users, :only => [:index, :show, :edit]
  match '/users/:id', :to => 'users#update', via: 'patch'
  match 'users/grantRoles', :to => 'users#grantRoles', via: 'post'


  get "pages/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  match 'ajax/get_districts/:city_id', :to => 'ajax#get_districts', via: 'get'
  match 'ajax/get_addresses/:customer_id', :to => 'ajax#get_addresses', via: 'get'
  match 'ajax/search_for_customer/:customer_mobile', :to => 'ajax#search_for_customer', via: 'get'

  # You can have the root of your site routed with "root"
  root 'pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end


end
