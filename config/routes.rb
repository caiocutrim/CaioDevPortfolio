Rails.application.routes.draw do
<<<<<<< HEAD
  resources :blogs
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
=======
  resources :portfolios
  get 'pages/home'
  get 'pages/contat'
  get 'pages/about'
  resources :blogs
>>>>>>> Add portifolio via resource generator
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
