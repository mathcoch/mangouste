Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'quizz', to: 'pages#home'
  resources :photos, only: [:new, :create]

end
