Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'test_url', to: 'games#some_action'
  # get 'games', to: 'games#index'
  # get 'companies', to: 'companies#index'
  # get 'games/:id', to: 'games#show'
  resources :games
  resources :companies
end
