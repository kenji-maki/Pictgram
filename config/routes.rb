Rails.application.routes.draw do
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help' # pagescontrollerの中にあるhelpアクションをゲットして、helpアクションに該当するページを呼び出す という意味合い
  get '/preview', to: 'pages#preview' # このように書けば、URLのところの/pages/previewっていうのを/previewだけに省略できる。

  resources :users
  resources :topics
  
  get     '/login',  to: 'sessions#new'
  post    '/login',  to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
end
