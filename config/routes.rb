Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions'}
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

# Ensure you have overridden routes for generated controllers in your routes.rb.
# For example:
# Rails.application.routes.draw do
#   devise_for :users, controllers: {
#     sessions: 'users/sessions'
#   }
# end
