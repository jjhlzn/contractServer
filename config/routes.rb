Rails.application.routes.draw do
  get 'login/login'
  post 'login/login'
  get 'login/registerdevice'
  post 'login/registerdevice'
  get 'login/resetbadge'
  post 'login/resetbadge'

  get 'approval/search'
  get 'approval/audit'
  post 'approval/search'
  post 'approval/audit'

  get 'order/search'
  get 'order/getBasicInfo'
  get 'order/getPurchaseInfo'
  get 'order/getChuyunInfo'
  get 'order/getFukuangInfo'
  get 'order/getShouhuiInfo'
  post 'order/search'
  post 'order/getBasicInfo'
  post 'order/getPurchaseInfo'
  post 'order/getChuyunInfo'
  post 'order/getFukuangInfo'
  post 'order/getShouhuiInfo'
  
  get 'product/search'
  post 'product/search'
  
  
  get 'price_report/search'
  post 'price_report/search'
  get 'price_report/getPriceReport'
  post 'price_report/getPriceReport'
  post 'price_report/searchProducts'
  get 'price_report/searchProducts'
  get 'price_report/submit'
  post 'price_report/submit'

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
