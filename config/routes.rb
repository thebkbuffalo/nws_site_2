Rails.application.routes.draw do
  root 'welcome#index'

  get '/well_pumps' => 'well_pumps#index'
  get '/water_storage' => 'water_storage#index'
  get '/water_treatment' => 'water_treatment#index'
  get '/water_testing'=> 'water_testing#index'
  get '/flood_prevention' => 'flood_prevention#index'

  namespace :well_pumps do
    get '/commercial' => 'commercial#index'
    get '/residential' => 'residential#index'
    get '/service_repair' => 'service_repair#index'
    get '/well_inspections' => 'well_inspections#index'

    namespace :commercial do
      resources :crane_services
      resources :trenchings
      resources :pumps_tanks_boosters
    end

    namespace :residential do
      resources :new_service_lines
      resources :new_pumps_pressure_tanks
      resources :emergency_services
      get '/repairs_conversions_pit_repairs' => 'repairs_conversions_pit_repairs#index'
    end
  end # ends well pumps namespace

  namespace :water_storage do
    get '/low_yielding_wells' => 'low_yielding_wells#index'
    get '/irrigation_storage' => 'irrigation_storage#index'
  end

  namespace :water_treatment do
    get '/commercial' => 'commercial#index'
    get '/residential' => 'residential#index'
    get '/reverse_osmosis' => 'reverse_osmosis#index'

    namespace :commercial do
      get '/hospitality' => 'hospitality#index'
      get '/office' => 'office#index'

      namespace :hospitality do
        get '/softners' => 'softners#index'
        get '/chlorine_removal' => 'chlorine_removal#index'
        get '/ultrapure_process_reverse_osmosis' => 'ultrapure_process_reverse_osmosis#index'
        get '/custom_applications' => 'custom_applications#index'
      end
      namespace :office do
        get '/water_coolers' => 'water_coolers#index'
        get '/drinking_water_icemakers' => 'drinking_water_icemakers#index'
      end
    end # ends commercial

    namespace :reverse_osmosis do
      get '/undersink' => 'undersink#index'
      get '/basement' => 'basement#index'
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
