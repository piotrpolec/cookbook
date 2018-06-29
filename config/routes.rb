Rails.application.routes.draw do
  resources :recipes
  resources :products
  resources :movies do
    collection do
        get 'search'
    end
  end
  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
