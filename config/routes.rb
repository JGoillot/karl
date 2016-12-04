Rails.application.routes.draw do
  root to: 'garments#index'

  mount Attachinary::Engine => "/attachinary"

  resources :garments, only: [:index, :show, :new, :create] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
