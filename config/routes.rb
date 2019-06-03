Rails.application.routes.draw do
  resources :formuls
  resources :theme_sections
  resources :themes
  resources :disciplines
  root "disciplines#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
