Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 get 'admin' , to: 'access#index'

  # post "subjects/create" => "subjects#create"	

  # get 'subjects/list' => 'subjects#list'

  # resources :subject
  
  root :to => "demo#index"
  
  # get 'demo/index'

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

get ':controller(/:action(/:id(.:format)))'

# post "subjects/update"

post "subjects/create"

# get "subjects/update"

# resources :subjects

post "subjects/update"

post "subjects/destroy"

post "pages/create"

post "pages/update"

post "pages/destroy"

post "sections/update"

post "sections/destroy"

post "sections/create"

post "access/attempt_login"

end
