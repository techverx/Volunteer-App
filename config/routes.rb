Volen::Application.routes.draw do
  resources :jobs
  resources :companies
  post '/rate' => 'rater#create', :as => 'rate'
  root :to => "home#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" , :registrations => "registrations"}
  devise_scope :user do
    get "/signin", :to => "devise/sessions#new"
    get "/signout", :to => "devise/sessions#destroy"
  end
  resources :users
end