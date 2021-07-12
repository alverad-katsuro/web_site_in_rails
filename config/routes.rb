Rails.application.routes.draw do
  root 'homes#index'
  get "/contacts", to: "contacts#new"
  post "contacts", controller: "contacts", action: "create"
  get "/contacts/show_all", to: "contacts#show_all"
  get "/contacts/show/:id", to: "contacts#show"
  get "/contacts/destroy/:id", to: "contacts#destroy"  
  delete "/contacts/destroy/:id", controller: "contacts", action: "destroy"
  resources :collaborators
  resources :members
  resources :visitors
  resources :noticia
  resources :homes
  resources :abouts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
