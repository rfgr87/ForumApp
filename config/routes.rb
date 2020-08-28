Rails.application.routes.draw do
  get '/test', to: 'application#test'
  
  resources :subject
  resources :user
  resources :comments

end
