Rails.application.routes.draw do
  resources :tasks do
    member do
      post 'toggle'
    end
  end

  root 'tasks#index'
end
