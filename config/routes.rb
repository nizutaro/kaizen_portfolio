Rails.application.routes.draw do

  namespace :admins do
    get 'top' => 'homes#top', as:'top'  
  end
  devise_for :admins, controllers: {
  sessions:      'admins/sessions'
}


  get 'jobs/index'
  get 'jobs/edit'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index,:show,:create,:edit, :update, :destroy] do
    resources :nicetry, only: [:create,:destroy]
  end

  resources :jobs, only: [:index,:create, :edit, :update, :destroy]

  resources :projects do
    resource :favorites
    resources :comments, only: [:create, :destroy]
  end

  root 'homes#about'
  get '/homes/inquery' => 'homes#inquery'
  post '/homes/guest_sign_in', to: 'homes#new_guest'


end
