Rails.application.routes.draw do
  resources :questions, except: [:edit, :update, :destroy] do
    member do
      post :post_answer
    end
  end
  resources :topics, except: [:edit, :update, :destroy]
  devise_for :users

  resources :users, only:[] do
    member do
      get :follow_user
      get :follow_topic
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    root 'questions#index'
  end

  unauthenticated do
    devise_scope :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
