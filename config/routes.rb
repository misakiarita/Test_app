Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  # devise_scope :user do
  #   root "users/sessions#new"
  # end

  # devise_for :users, :controllers => {
  #   sessions: 'users/sessions'
  # }
  resources :blogs
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
