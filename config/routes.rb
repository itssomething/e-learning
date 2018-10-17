Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"

  resources :question_banks
  resources :categories
  resources :exams
end
