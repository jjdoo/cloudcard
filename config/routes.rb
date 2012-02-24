ActionController::Routing::Routes.draw do |map|

  map.connect 'session', :conditions =>{ :method => :post}, :controller => 'session', :action=>"post"
  map.connect 'session', :conditions =>{ :method => :get}, :controller => 'session', :action=>"get"
  map.connect 'session', :conditions =>{ :method => :delete}, :controller => 'session', :action=>"delete"

  map.connect 'store/session', :conditions =>{ :method => :post}, :controller => 'store', :action=>"post"
  map.connect 'store/session', :conditions =>{ :method => :get}, :controller => 'store', :action=>"get"
  map.connect 'store/session', :conditions =>{ :method => :delete}, :controller => 'store', :action=>"delete"

  map.connect 'store/:store_id/member', :conditions =>{ :method => :get}, :controller => 'store_member', :action=>"get"
  map.connect 'store/:store_id/member', :conditions =>{ :method => :delete}, :controller => 'store_member', :action=>"delete"
  map.connect 'store/:store_id/member/pending', :conditions =>{ :method => :get}, :controller => 'store_member', :action=>"pending_list"
  map.connect 'store/:store_id/member/pending', :conditions =>{ :method => :put}, :controller => 'store_member', :action=>"pending_dispose"

  map.resources :card_classes, :controller => ":card_classes",  :path_prefix => "/store/:store_id"
  # --> store/<store_id>/card_classes
  map.resources


  map.resources :users

  map.resources :ele_coupons

  map.resources :advs

  map.resources :cards  

  map.resources :stores

  

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
