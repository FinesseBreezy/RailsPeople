Rails.application.routes.draw do
 
  root 'static_pages#home'
  
  resources :people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end