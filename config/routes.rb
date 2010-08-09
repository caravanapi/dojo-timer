ActionController::Routing::Routes.draw do |map|
  map.resources :dojos do |dojo|
    dojo.resources :users, :only => [:new, :create, :destroy]
  end
  map.root :controller => :dojos, :action => :index
end
