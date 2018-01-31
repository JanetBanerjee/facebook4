Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'posts#home'

  get "/user_posts" => "posts#user_posts"
  get "/user_comments" => "posts#user_comments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
