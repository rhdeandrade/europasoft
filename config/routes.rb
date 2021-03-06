Rails.application.routes.draw do
  resources :relacao_produtos
  get 'produtos_clientes' => 'produtos_clientes#index'
  get 'produtos_clientes/:id/troca_camara' => 'produtos_clientes#troca_camara', as: :troca_camara
  post 'produtos_clientes/:id/save_troca_camara' => 'produtos_clientes#save_troca_camara', as: :save_troca_camara

  resources :vendas
  resources :produtos
  resources :vendedors
  resources :clientes

  #get 'vendas/:produto_id/troca_camara' => 'vendas#troca_camara', as: :troca_camara

  #post 'vendas/:produto_id/save_troca_camara' => 'vendas#save_troca_camara', :save_troca_camara

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'produtos_clientes#index'

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
