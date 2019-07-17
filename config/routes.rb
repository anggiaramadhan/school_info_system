Rails.application.routes.draw do
  resources :classrooms, only: :show

  get 'classrooms', to: 'classrooms#best_scores'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
