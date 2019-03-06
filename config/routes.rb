Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :workouts
  resources :workout_exercises

  post 'signin', to: 'users#signin'
  get 'validate', to: 'users#validate'
  get 'workouts', to: 'users#get_workout'

end
