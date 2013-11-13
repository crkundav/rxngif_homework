Rxngif::Application.routes.draw do

  # Routes for the Photo resource:
  # CREATE
  get '/photos/new', controller: 'photos', action: 'new', :as => 'new_photo'
  post '/photos', controller: 'photos', action: 'create'

  # READ
  get '/photos', controller: 'photos', action: 'index'
  get '/photos/:id', controller: 'photos', action: 'show', :as => 'photo'

  # UPDATE
  get '/photos/:id/edit', controller: 'photos', action: 'edit', :as => 'edit_photo'
  patch '/photos/:id', controller: 'photos', action: 'update'

  # DELETE
  delete '/photos/:id', controller: 'photos', action: 'destroy'
  #------------------------------

  #CREATE
  get "/posts/new", :controller => "posts", :action => "new", :as => "new_post"
  post "/posts", :controller => "posts", :action => "create", :as => "posts" 
  
  #READ
  get "/posts", :controller => "posts", :action => "index"
  get "/posts/:id", :controller => "posts", :action => "show", :as => "post" 
  
  #UPDATE
  get "/posts/:id/edit", :controller => "posts", :action => "edit", :as => "edit_post" 
  patch "/posts/:id", :controller => "posts", :action => "update" 
  
  #DELETE
  delete "/posts/:id", :controller => "posts", :action => "destroy" 
end
