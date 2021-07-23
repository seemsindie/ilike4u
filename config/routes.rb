Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'jobs#new'

  resources :users, except: :delete do

    resources :jobs, except: :delete do
      get 'run'
      get 'stop'
      post 'add_like'
      post 'update_latest_image'
      post 'update_avatar'
     resources :given_likes, :delete
    end
  end

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
  end

  get 'register/final' => 'pages#register_final'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
