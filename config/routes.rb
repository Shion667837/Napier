Rails.application.routes.draw do
  post '/guest_sign_in', to: 'sessions#new_guest'
  post '/like/:id', to: 'likes#create', as: 'create_like'
  delete '/like/:id', to: 'likes#destroy', as: 'destroy_like'
  root 'posts#home'
  get '/', to: 'posts#home'
  get 'about', to: 'posts#about'
  get 'posts/search', to: 'posts#search'
  get 'posts/post_ranking', to: 'posts#post_ranking'
  get 'posts/week_ranking', to: 'posts#week_ranking'
  get 'posts/month_ranking', to: 'posts#month_ranking'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post 'guest_login', to: 'guest_sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/favorites/index', to: 'favorites#index'

  resources :posts, only: [:create, :destroy, :new, :edit, :update] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resources :users

  resources :users do
    member do
      get :following, :followers
      get :likes
    end
  end

  resources :companies do
    collection do
      get 'home'
    end
    resource :favorites, only: [:create, :destroy]
  end

  resources :posts, only: [:create, :destroy, :new, :edit, :update] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resources :relationships, only: [:create, :destroy]
  resources :posts
  resources :companies
end
