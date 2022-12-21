Rails.application.routes.draw do
  root to: 'homes#top'
  get 'new' => 'books#new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'book_edit'
  patch 'books/:id' => 'books#update', as: 'book_update'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
