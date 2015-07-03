Rails.application.routes.draw do

  post 'signup' => 'users#create', as: :users  # signup
  post 'signin' => 'sessions#create', as: :auth # signin

  get 'secrets/all' => 'secrets#index', as: :all_secrets
  get 'secrets/:user_id/user' => 'secrets#show', as: :user_secrets
  post 'newsecret' => 'secrets#create', as: :secrets

end
