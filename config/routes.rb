Volen::Application.routes.draw do
  resources :jobs
  resources :companies
  post '/rate' => 'rater#create', :as => 'rate'
  root :to => "home#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" , :registrations => "registrations"}
  devise_scope :user do
    get "/signin", :to => "devise/sessions#new"
    get "/signout", :to => "devise/sessions#destroy"
    get "/volunteer_sign_up", :to => "registrations#new_volunteer"
    get "/company_sign_up", :to => "registrations#new_company"
  end
  resources :users
end