Rails.application.routes.draw do
  get 'dashboard', to:'tasks#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do
    member do
      patch 'assign_task'
      patch 'update_status'
    end
  end

  resources :reports, only: [:index] do
    collection do
      get 'task_completion_report'
      get 'team_performance_report'
    end
  end

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'registrations#new', as: 'signup'
  post '/signup', to: 'registrations#create'
end
