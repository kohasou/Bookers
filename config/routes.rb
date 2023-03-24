Rails.application.routes.draw do
  get 'books' => 'books#top2'
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
