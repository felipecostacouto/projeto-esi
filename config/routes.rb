Rails.application.routes.draw do
  resources :diretorios
  get 'welcome/login', as: :login
  get 'welcome/signup', as: :signup
  get 'welcome/index', as: :menu
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :buscar_diretorio
  get 'welcome/buscar', as: :buscar
  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
