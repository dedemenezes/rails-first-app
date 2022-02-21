Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # VERB 'PATH', to: 'controller#action'
  
  # When we want to change the "Yay you're on Rails" root path
  # you do:
  # get '/' == root
  root to: 'pages#home'
  get 'about', to: 'pages#about' # , as: :prefix
  get 'contact', to: 'pages#contact'
end
