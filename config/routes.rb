Rails.application.routes.draw do
  resources :pendaftarans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'kursus'
  
  root 'kursus#index'
  # get 'kursus/index'
  # get 'kursus/new'

end
