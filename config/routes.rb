Worldsblankestblank::Application.routes.draw do

resources :images do
  member do
    put '/agree', :action => :agree
  end
end

get 'search', to: 'images#search'
post 'filtered', to: 'images#filtered'

root :to => 'images#index'
end
