Rails.application.routes.draw do
namespace :api do
  namespace :v1 do
    resources :users
    resources :courses
    resources :subscriptions
    post '/login', to: 'auth#login'
    get "/auto_login", to: "auth#auto_login"
    get "/courses/:id", to: "courses#show"
    delete "/subscriptions/:id", to: "subscriptions#destroy"

    end
  end
end
