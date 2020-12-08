Rails.application.routes.draw do
  devise_for :users, :controllers => {  registrations: 'registrations' }
  resources :posts, only:[:new, :index, :create]
  
  root "posts#index"
end
