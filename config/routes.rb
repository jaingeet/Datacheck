Rails.application.routes.draw do
  resources :servicemen
  #resourses :sessions, only: [:new, :create, :destroy]

  resources :requests
  resources :request_logs
  resources :employees
  get '/employees/delete/:id', to:  "employees#delete"
  get "/login" => "sessions#new", :as => "session_login"
  get "/signup" => "employees#new", :as => "session_signup"
  post "sessions/create" => "sessions#create"
  get "employee/new" => "employees#new"
  get "request/new" => "employees#new"
  get "serviceman/new" => "employees#new"
  post "req/search" => "requests#search"
  #get '/signup', to: 'employees#new', :as => 'register'
  #get 'login', to: 'sessions#new', :as => 'login'
  #get '/logout', to: 'session#destroy' :as =>'destroy'

   # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
