ThespeeApp::Application.routes.draw do
  get "content/monthly"

  get "content/quarterly"

  get "content/yearly"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users
end