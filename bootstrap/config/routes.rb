Rails.application.routes.draw do
  
  root 'articles#index'
  
  get 'articles/:id'  =>  'articles#show'
  
  post "articles/:id" =>  "comments#create"
  
 end