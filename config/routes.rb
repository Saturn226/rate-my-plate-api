Rails.application.routes.draw do
  resources :users
  resources :votes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :plates, except: [:new, :edit]
  end
end
