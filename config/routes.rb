Rails.application.routes.draw do
  resources :diretorios do
    member do
      delete :delete_diretorio
    end
  end

  get 'menu', to: 'welcome#index'
  get 'signup', to: 'registrations#new'
  get 'login', to: 'registrations#login'
  get 'campi', to: 'campi#index'
  post 'signup', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'
  resources :registrations


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :buscar_diretorio
  get 'welcome/buscar', as: :buscar
  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
