Rails.application.routes.draw do

  root 'welcome#index'
  get "/auth/twitter",    to: "session#create", as: "login"
  get "/auth/twitter/callback",  to: "session#create"
  get '/items',           to: 'items#index',  as: 'items'
  get  '/items/new',      to: 'items#new',    as: "new_item"
  post '/items',          to: 'items#create'
  get '/items/:id/edit',  to: 'items#edit',   as: 'edit_item'
  patch '/items/:id',     to: 'items#update'
  delete '/items/:id',    to: 'items#destroy'
  get '/items/:id',       to: 'itmes#shos',    as: 'item'

end
