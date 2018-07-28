Rails.application.routes.draw do
  resources :folios, except: [:show]
  get 'folio/:id', to: 'folios#show', as: 'folio_show'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  get 'folios/angular', to: 'folios#angular'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
