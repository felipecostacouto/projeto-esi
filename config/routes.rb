Rails.application.routes.draw do
  resources :diretorios do
    member do
      delete :delete_diretorio
    end
  end
  get 'welcome/login', as: :login
  get 'welcome/signup', as: :signup
  get 'welcome/index', as: :menu
  resources :diretorios

  get 'menu', to: 'welcome#index'
  get 'signup', to: 'registrations#new'
  get 'login', to: 'registrations#login'
  post 'signup', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'
  resources :registrations


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
