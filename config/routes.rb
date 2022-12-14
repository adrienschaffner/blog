Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
end
