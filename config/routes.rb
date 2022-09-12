Rails.application.routes.draw do
  devise_for :users

  resources :trees do
    resources :events
  end

  root 'trees#index'
end
