Rails.application.routes.draw do
  resources :facultades
  resources :programas
  resources :estudiantes
  root 'estudiantes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
