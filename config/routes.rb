Rails.application.routes.draw do
  get 'commentts/index'
  root "articles#index"
  
  resources :commentts
  resources :articles do
    resources :comments
  end 
end