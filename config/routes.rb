Worldsblankestblank::Application.routes.draw do

get "log_in" => "sessions#new", :as => "log_in"
get "log_out" => "sessions#destroy", :as => "log_out"
get "sign_up" => "users#new", :as=>"sign_up"

resources :users
resources :sessions
resources :images do
  member do
    put '/agree', :action => :agree
  end
end

get 'search', to: 'images#search'
post 'filtered', to: 'images#filtered'

root :to => 'images#index'
end
