Rails.application.routes.draw do
 devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events
  resources :users, only: [:index, :edit, :update, :show]
  resources :orders, only: [:new, :create]
  resources :attendances
  # Defines the root path route ("/")
  root "welcome#index"
  

  namespace :admin do
    root to: 'admin#index'
  end


  namespace :admin do
    resources :users, only: [:index, :edit, :update, :destroy]
  end

  namespace :admin do
    resources :event_submissions, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :event_submissions, only: [:index]
    post 'event_submissions/:id/validate', to: 'event_submissions#validate', as: 'validate_event_submission'
  end


  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
end





end




