Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/success'

  get '/account/new_user'
  post '/account/create'
  get '/account/success'
  get '/account/failure'
end
