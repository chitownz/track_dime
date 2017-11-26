Rails.application.routes.draw do
  devise_for :users

  # devise_for :users do
  # get '/users/sign_out' => 'devise/sessions#destroy'
  # end

  resources :categories
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/filter'

  # get "about", to: "welcome#about"
  resources :transactions do
    collection {post :import}
  end
  
  root to: 'welcome#index'


end
