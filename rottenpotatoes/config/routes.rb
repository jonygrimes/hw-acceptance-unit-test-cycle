Rottenpotatoes::Application.routes.draw do
  resources :movies
  root 'movies#index'
  # map '/' to be a redirect to '/movies'
  #root :to => 'movies#index'
  #get 'dsearch' => 'movies#dsearch'
  get "/dsearch/:id" => "movies#dsearch"
  get 'movies/:id/dsearch' => 'movies#dsearch', :as => :dsearch
  
end
