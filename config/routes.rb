Rails.application.routes.draw do
  devise_for :users

  get "/dashboard" => "users#index"
  get "profile/:user_name" => "users#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post
  post 'follow/user' => 'users#follow_user', as: :follow_user

  resources :posts, only: [:new, :create, :show]

  root to: 'public#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
