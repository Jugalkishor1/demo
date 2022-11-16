Rails.application.routes.draw do
  root 'papers#index'

#---custom routes of papers controller------
  get '/papers', to: 'papers#index'

  post '/papers', to: 'papers#create'

  get '/papers/new', to: 'papers#new', as: 'new_paper'

  get '/papers/:id', to: 'papers#show', as: 'paper'

  get '/papers/:id/edit', to: 'papers#edit', as: 'edit_paper'

  patch '/papers/:id', to: 'papers#update'

  put '/papers/:id', to: 'papers#update'

  delete '/papers/:id', to: 'papers#destroy'

  resources :trips

#-------namespace and scope ------------
  # namespace :admin do
  #   resources :articles, :comments
  # end

  # scope  path: 'custom' do
  #   resources :articles
  # end


#----- shallow option ---------------
  # resources :articles do
  #   resources :comments, shallow: true
  # end

#   scope shallow_path: "sekret" do
#     resources :articles do
#       resources :comments, shallow: true
#     end
#   end


# #---- member and collection routes ---
#   resources :photos do
#     member do
#       get :preview
#     end
#   end

#   resources :photos do
#     collection do
#       get :search
#     end
#   end


#---- redirection -----------
#   get '/papers', to: redirect('/articles')


#----- resolve -------------
  
  #resource :article

   #resolve("Article") { [:article] }


#---  routes name helper overriding -----
resources :photos, controller: 'images'


#-----Override new and edit --------
resources :abc, path_names: { new: 'latest', edit: 'change' }

  # scope module: 'admin', path: 'hello', as: 'cool' do
  #   get '/phones/new', to: 'phones#new', as: 'new_phone'
  # end

  # get 'articles/*section/:title', to: 'articles#show'

  resources :users do
    get 'search', on: :collection
  end

  # resources :post, shallow: true do
  #   resources :commentss
  #   resources :quotes
  #   resources :drafts
  # end 

  resources :basket

resolve("Basket") { [:basket] } 

  resources :articles do
    resources :comments
  end

end