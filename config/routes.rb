RiskAssessmentApp::Application.routes.draw do
  
  resources :dams


  resources :basins


  resources :answers


  resources :answer_types


  get "static_pages/map"

  get "static_pages/about"
  
  match 'map', to: 'basins#index', via: 'get'
  match 'about', to: 'static_pages#about', via: 'get'
  
  match 'risks/impact' => 'risks#impact', :as => :impact_risk

  match 'risks/register' => 'risks#register', :as => :register_risk
  
   match 'risks/matrix' => 'risks#matrix', :as => :matrix_risk

  resources :controlers


  resources :classifications


  resources :impacts


  resources :probabilities


  get "user_sessions/new"

  resources :users


  resources :periods


  root :to =>'risks#index'
  
  resources :risks
  

  resources :locations do
    resources :risks
  end

  resources :classifications do
    resources :impacts
  end

  resources :impacts do
    resources :periods
  end

  resources :probabilities do
    resources :periods
  end


  resources :types do
    resources :risks
  end

  resources :risks do
    resources :periods
  end
  
  
  resources :user_sessions
          get 'login', to: 'user_sessions#new'
          get 'logout', to: 'user_sessions#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
