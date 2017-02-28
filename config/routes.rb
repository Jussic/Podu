Rails.application.routes.draw do
  devise_for :podcasts
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  
  root 'welcome#index'
  
  resources :podcasts, only: [:index, :show]
end
