Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, except: :delete do
    resources :jobs, except: :delete do
     resources :given_likes, only: [:index]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
