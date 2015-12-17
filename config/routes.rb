Rails.application.routes.draw do
  root 'welcome#index'

  get '/well_pumps' => 'well_pumps#index'
  get '/water_storage' => 'water_storage#index'
  get '/water_treatment' => 'water_treatment#index'
  resources :water_testings
  resources :flood_preventions

  namespace :well_pumps do
    get '/commercial' => 'commercial#index'
    get '/residential' => 'residential#index'
    resources :service_repairs
    resources :well_inspections

    namespace :commercial do
      resources :crane_services
      resources :trenchings
      resources :pumps_tanks_boosters
    end

    namespace :residential do
      resources :new_service_lines
      resources :new_pumps_pressure_tanks
      resources :emergency_services
      resources :repairs_conversions_pit_repairs
    end
  end # ends well pumps namespace

  namespace :water_storage do
    resources :low_yielding_wells
    resources :irrigation_storages
  end

  namespace :water_treatment do
    get '/commercial' => 'commercial#index'
    get '/residential' => 'residential#index'
    get '/reverse_osmosis' => 'reverse_osmosis#index'

    namespace :commercial do
      get '/hospitality' => 'hospitality#index'
      get '/office' => 'office#index'

      namespace :hospitality do
        resources :softners
        resources :chlorine_removals
        resources :ultrapure_process_reverse_osmosis
        resources :custom_applications
      end
      namespace :office do
        resources :water_coolers
        resources :drinking_water_icemakers
      end
    end # ends commercial

    namespace :reverse_osmosis do
      resources :undersinks
      resources :basements
      get '/whole_house' => 'whole_house#index'
    end # ends revers osmosis
  end # ends water treatment namespace


  resources :blogs, path: "blog"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

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
