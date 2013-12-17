Auth::Application.routes.draw do
  
  
  resources :step2s

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  resources :step1s
  #post "step1s#new" => "step1s#new"
  root :to => "home#index"
end
