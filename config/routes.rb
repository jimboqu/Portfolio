Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_up: 'signup'}
  resources :folios do
    put :sort, on: :collection
  end
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
