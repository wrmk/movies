Rails.application.routes.draw do
  root 'movies#index'
  resources :movies do
    collection do
      # resources :category, only: [:index] do
        # Movie.categories.map{|category| get category.downcase, to: 'movies#index'}
        get 'category/:category', to: 'movies#index'
      # end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
