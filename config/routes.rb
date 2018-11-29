Rails.application.routes.draw do
  get 'material_reviews/create'
  get 'material_reviews/destroy'
  devise_for :users
  root to: "pages#home"
  resources :materials do
    resources :locations, except: :index
    get "validation/:id", to:"locations#validation", as: "validation"
    resources :material_reviews, except: :index
  end
  resources :locations, only: :index
  resources :material_reviews, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
