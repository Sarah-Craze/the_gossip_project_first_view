Rails.application.routes.draw do
  resources :gossips
  get 'welcome/greeting'
  get 'welcome/index'
  get 'gossips/index'
  get 'static/team'
  get 'static/contact'
  root 'gossips#index' # Page d'accueil
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'team', to: 'static#team', as: 'team' # Page de présentation de l'équipe
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  get 'contact', to: 'static#contact', as: 'contact' # Page de contact

  get '/welcome/:name', to: 'static#welcome', as: 'welcome' # Page de bienvenue

  get "up" => "rails/health#show", as: :rails_health_check

  

  # Defines the root path route ("/")
  # root "posts#index"
end
