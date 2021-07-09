Rails.application.routes.draw do
  resources :collaborators
  root 'homes#index'
  resources :members
  resources :visitors
  resources :noticia
  resources :homes
  resources :abouts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
