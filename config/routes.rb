Rails.application.routes.draw do
 
  root 'galleries#index'
  
  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions#logout'

  get 'pictures/' => 'pictures#index'
  get 'pictures/new' => 'pictures#new'
  post 'pictures/create' => 'pictures#create'
  post 'pictures/update' => 'pictures#update'
  patch 'pictures/delete' => 'pictures#delete'
  get 'pictures/confirmation' => 'pictures#confirmation'

  get 'galleries/' => 'galleries#index'
  get 'galleries/show' => 'galleries#show'
  get 'galleries/new' => 'galleries#new'
  post 'galleries/create' => 'galleries#create'
  post 'galleries/update' => 'galleries#update'
  patch 'galleries/delete' => 'galleries#delete'
  get 'galleries/confirmation' => 'galleries#confirmation'
  get 'galleries/:id', to: 'galleries#show', as: 'gallery'

  get 'users/register' => 'users#register'
  post 'users/confirmation' => 'users#confirmation'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
