Rails.application.routes.draw do
  post 'new_reply', to: 'article_comments#new_reply', as: 'new_reply'
  resources :articles
  resources :article_comments
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
