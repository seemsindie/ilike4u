Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'jobs#new'

  resources :users, except: :delete do

    resources :jobs, except: :delete do
      get 'run'
      get 'stop'
      get 'add_like'
      get 'update_image'
     resources :given_likes, :delete
    end
  end

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
