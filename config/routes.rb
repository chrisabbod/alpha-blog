Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'family', to: 'pages#family'
  #get 'articles', to: 'pages#articles'
  #resources :articles
  resources :articles, only: [:show, :index]
end
