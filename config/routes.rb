Rails.application.routes.draw do
  get '/books' => 'books#index'
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
