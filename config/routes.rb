Rails.application.routes.draw do
  get '/books' => 'books#index'
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  resources :books, only: [:create, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
