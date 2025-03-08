Rails.application.routes.draw do
  #ルートパス
  root to: 'homes#top'
  get '/books' => 'books#index'
  get 'books/show'
  get 'books/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
