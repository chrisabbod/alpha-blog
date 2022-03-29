Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'family', to: 'pages#family'
end
