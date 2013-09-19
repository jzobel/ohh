Ohh::Application.routes.draw do

  root to: 'errors#index'
  
  get '/errors' => 'errors#index'
  get '/error' => 'errors#error'
end
