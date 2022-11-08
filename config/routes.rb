Rails.application.routes.draw do
  resources :diretorios do
    member do
      delete :delete_diretorio
    end
  end
  get 'welcome/login', as: :login
  get 'welcome/signup', as: :signup
  get 'welcome/index', as: :menu
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
