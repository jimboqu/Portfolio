Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_up: 'signup'}
  resources :folios do
    put :sort, on: :collection
  end
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'content-news', to: 'pages#content_news'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  get 'folios/angular', to: 'folios#angular'
  root 'pages#home'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
