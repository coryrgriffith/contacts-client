Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  # index
  # new
  # show
  # create
  # edit
  # update
  # destroy
  namespace :client do
    get '/contacts' => 'contacts#index'
    get '/contacts/new' => 'contacts#new'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    get '/contacts/:id/edit' => 'contacts#edit'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
  end
end
