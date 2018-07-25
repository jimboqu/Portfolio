Rails.application.routes.draw do
  resources :folios, except: [:show]
  get 'folio/:id', to: 'folios#show', as: 'folio_show'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  resources :blogs
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
