Rails.application.routes.draw do
  root 'movies#index'
  post 'rate' => 'movies#rate'
  resources :movies do
    collection do
      # Movie.categories.map{|category| get "category/#{category}", to: 'movies#index'}
      get 'category/:category', to: 'movies#index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
