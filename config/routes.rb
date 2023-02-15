Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  resources :users
  resources :conversations do
    resources :messages
  end
  
  

  resources :blogs
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
