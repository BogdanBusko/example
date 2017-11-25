Rails.application.routes.draw do
  get   '/main',      to: 'main#index'
  post  '/main',      to: 'main#create_post'
  post  '/main/:id',  to: 'main#create_comment', as: 'comment'
end
