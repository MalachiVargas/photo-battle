Rails.application.routes.draw do
  resources :sessions
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :battle_attachments
  get 'welcome/index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :battles
  
  

  resources :battles do
    member do
        get :result
    end
  end

  
  #get 'vote', to: 'battles#vote', as: 'vote'
end
