FirstRoute::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :users do
    resources :contacts, only: :index
  end

  # resources :users

  # get 'users' => 'users#index', :as => 'users'
  # post 'users' => 'users#create', :as => ''
  #
  # get 'users/new' => 'users#new', :as => 'new_user'
  #
  # get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  # get 'users/:id' => 'users#show', :as => 'user'
  # #
  # patch 'users/:id' => 'users#update', :as => ''
  # put 'users/:id' => 'users#update', :as => ''
  # delete 'users/:id' => 'users#destroy', :as => ''

  #resource contacts

  get 'contacts' => 'contacts#index', :as => 'contacts'
  post 'contacts' => 'contacts#create', :as => ''

  get 'contacts/new' => 'contacts#new', :as => 'new_contact'

  get 'contacts/:id/edit' => 'contacts#edit', :as => 'edit_contact'
  get 'contacts/:id' => 'contacts#show', :as => 'contact'

  patch 'contacts/:id' => 'contacts#update', :as => ''
  put 'contacts/:id' => 'contacts#update', :as => ''
  delete 'contacts/:id' => 'contacts#destroy', :as => ''

  #contact shares routes

  #resources :contact_shares

  get 'contact_shares' => 'contact_shares#index', :as => 'contact_shares'
  post 'contact_shares' => 'contact_shares#create', :as => ''

  get 'contact_shares/new' => 'contact_shares#new', :as => 'new_contact_share'

  get 'contact_shares/:id/edit' => 'contact_shares#edit', :as => 'edit_contact_share'
  get 'contact_shares/:id' => 'contact_shares#show', :as => 'contact_share'

  patch 'contact_shares/:id' => 'contact_shares#update', :as => ''
  put 'contact_shares/:id' => 'contact_shares#update', :as => ''
  delete 'contact_shares/:id' => 'contact_shares#destroy', :as => ''


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
