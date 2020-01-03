Rails.application.routes.draw do
  resources :tags, only: [:index]
  resources :notes
  resources :users, only: [:index, :show, :create]
  resources :note_tags, only: [:create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
