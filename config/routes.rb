Rails.application.routes.draw do
  get 'tameshis/sononi'
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help' # pagescontrollerの中にあるhelpアクションをゲットして、helpアクションに該当するページを呼び出す という意味合い
  get '/preview', to: 'pages#preview' # このように書けば、URLのところの/pages/previewっていうのを/previewだけに省略できる。

  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get     '/login',  to: 'sessions#new' #login_pathがindex.html.erbにある #get通信で/loginページを呼び出して、同時にsessions newアクションを行っている
  post    '/login',  to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
  get     '/tameshis/index'
  get     '/tameshis/sonosan'
end
