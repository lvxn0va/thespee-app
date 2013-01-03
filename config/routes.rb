ThespeeApp::Application.routes.draw do
  resources :categories

  resources :schools

  mount StripeEvent::Engine => '/stripe'
  
  get "content/monthly"

  get "content/quarterly"

  get "content/yearly"

  authenticated :user do
    root :to => 'home#main', :as => :home
  end
  root :to => "home#main", :as => :home
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users
end