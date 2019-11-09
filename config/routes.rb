Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about', to: 'welcome#about'

  resources :tickets

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout' => 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy] do
    resources :tickets , shallow: true
  end


end
