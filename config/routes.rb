Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users
    resources :plates, except: [:new, :edit]
    post '/signup', to: 'users#signup'
    post '/login', to: 'sessions#login'
    post '/logout', to: 'sessions#logout'
    post '/plates/:id/upvote', to: 'plates#upvote'
    post '/plates/:id/downvote', to: 'plates#downvote'
    get '/plates/:id/votes', to: 'plates#votes'
  end
end
