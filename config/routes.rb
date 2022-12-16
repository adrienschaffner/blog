Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  resources :articles do
    collection do
      get :top
    end
    member do
      get :author
    end
    # nested resources within articles
    resources :comments
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
