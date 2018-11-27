Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :materials do
    resources :locations, except: :index
    get "validation/:id", to:"locations#validation", as: "validation"
  end
  resources :locations, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
