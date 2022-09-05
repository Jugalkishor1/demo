Rails.application.routes.draw do
  #get 'book/index'
  #get 'commentts/index'
  # root "articles#index"
  root "book#index"
  
  resources :book
  #resources :commentts
  resources :articles do
    resources :comments
  end 
end