Ohh::Application.routes.draw do

  root to: 'errors#index'
  
  get '/errors' => 'errors#index'
  get '/bam' => 'errors#bam'
  
  match '/404', to: 'application#not_found', via: :all
  match '/500', to: 'application#internal_error', via: :all
  
end
