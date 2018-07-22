Rails.application.routes.draw do
  resources :folios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pageshome/about'
  get 'pageshome/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
