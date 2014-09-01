Demo::Application.routes.draw do
  get "user" =>"user#index"
  get "user/index"
  get "user/selectable"
  get "user/tab"
  get "user/helloWorld"
  get "user/bind"
  get "user/menu"
  get "user/todo"
  post "user/todo_count"
  post "user/todo_add"
  delete "user/todo_delete/:id"=>"user#todo_delete"
  post "user/todo_edit"
  get "user/todo_list/:page"=>"user#todo_list"
  get "team/index"
  get "team" =>"team#index"
  get "team/chal"
  post "team/list"

  get "member/home"
  get "member" => "member#home"
  get "member/msg"
  post "member/list"
  post "member/new"
  post "member/remove"
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
  root :to => 'user#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
