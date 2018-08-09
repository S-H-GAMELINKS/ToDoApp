Rails.application.routes.draw do
  get 'home/index'
  
  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end
end
