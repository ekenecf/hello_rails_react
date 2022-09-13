Rails.application.routes.draw do
  resources :messages
  # get 'message/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "statics#index"
end
