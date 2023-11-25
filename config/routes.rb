Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do
    member do
      patch 'assign_task'
      patch 'update_status'
    end
  end

  resources :reports, only: [] do
    collection do
      get 'task_completion_report'
      get 'team_performance_report'
    end
  end
end
