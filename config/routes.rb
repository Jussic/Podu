Rails.application.routes.draw do
  
  devise_for :podcasts

  resources :podcasts, only: [:index, :show] do 
    resources :episodes
  end
  
  authenticated :podcast do 
    root 'podcasts#dashboard', as: "authenticated_root"
  end
   
  root 'welcome#index'
  
  get '/secret', to: 'pages#secret', as: :secret

<<<<<<< HEAD
end
=======
end
>>>>>>> fff6b92a1fcaf5d6d9280dad65b7beab59a2444e
