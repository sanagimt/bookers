Rails.application.routes.draw do
  #ルートパス
  root to: 'homes#top'
  get '/top' => 'homes#top'
  delete 'lists/:id' => 'lists#destroy'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
