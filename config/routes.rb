ActionController::Routing::Routes.draw do |map|
  map.resources :dojos, :only => [:index, :new, :create, :show]
  map.root :controller => :dojos, :action => :index
end
