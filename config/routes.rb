Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'
  post 'rate' => 'rating#rate'
  post 'rate_update' => 'rating#rate_update'
  resources :movies do
    collection do
      # Movie.categories.map{|category| get "category/#{category}", to: 'movies#index'}
      get 'category/:category', to: 'movies#index'
    end
  end
end
