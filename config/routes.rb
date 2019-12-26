Rails.application.routes.draw do
  resources :tags, only: [:index]
  resources :notes, except: [:new, :edit]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
