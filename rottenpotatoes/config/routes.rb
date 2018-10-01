Rottenpotatoes::Application.routes.draw do
  resources :movies
  root 'movies#index'
  # map '/' to be a redirect to '/movies'
  #root :to => 'movies#index'
end
