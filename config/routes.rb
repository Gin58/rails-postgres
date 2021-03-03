Rails.application.routes.draw do
  scope module: :auth do
    post '/signup', to: 'registrations#signup'
    post '/login', to: 'sessions#login'
    delete '/logout', to: 'sessions#logout'
    get '/logged_in', to: 'sessions#logged_in?'
  end
  namespace :api do
    namespace :v1, format: 'json' do
      resources :users, only: [:index]
    end
  end
end
