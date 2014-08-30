Rails.application.routes.draw do
  root to: "chat#room"

  get '/login' => 'chat#login'
  post '/login' => 'chat#login'
  get '/room' => 'chat#room'
  post '/post_message' => 'chat#post_message'
  get 'logout' => 'chat#logout'
end
