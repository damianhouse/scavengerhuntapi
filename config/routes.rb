Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    token_validations:  'overrides/token_validations',
    sessions:  'overrides/sessions'
  }
  
  scope module: 'api' do
    namespace :v1 do
      resources :users
      resources :scores
      resources :answers
      resources :questions
      resources :players
      resources :teams
      resources :games
    end
  end
end
