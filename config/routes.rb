Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'movies/update'
  devise_for :users
  resources :movies
  root to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
