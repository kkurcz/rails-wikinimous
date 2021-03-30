Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  get '/article/new', to: 'articles#new', as: 'article_new'
  get '/articles/:id', to: 'articles#show', as: 'article'
  post 'articles', to: 'articles#create'


  # prefix (get/post/patch/delete) + link + controller method + alias
end
