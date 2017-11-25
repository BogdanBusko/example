Rails.application.routes.draw do
  post  '/main',      to: 'main#create_post'
  post  '/main/:id',  to: 'main#create_comment', as: 'comment'

  root 'main#index'
end
