Rails.application.routes.draw do
  resources :scores
  resources :answers
  resources :questions
  resources :players
  resources :teams
  resources :games
  mount_devise_token_auth_for 'User', at: 'auth'

  scope module: 'api' do
    namespace :v1 do
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
