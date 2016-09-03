Rails.application.routes.draw do
  resources :student_profiles
  resources :skills do
    member do
      get :add_user_to
    end
  end
  resources :skill_categories
  resources :company_profiles
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
