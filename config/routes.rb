ActionController::Routing::Routes.draw do |map|
  map.resources :dojos
  map.root :controller => :dojos, :action => :index
end
