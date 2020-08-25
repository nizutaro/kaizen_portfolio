Rails.application.routes.draw do
 
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
  

end
