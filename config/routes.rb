Rails.application.routes.draw do
  root to: 'posts#index'

  concern :commentable do
    resources :comments
  end
  
  resources :places, concerns: :commentable
  resources :posts, concerns: :commentable
 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
