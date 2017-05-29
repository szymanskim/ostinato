Rails.application.routes.draw do
  devise_for :users, path: 'u'
  resources :users
  resources :topics
  get "/pages/:page" => "pages#show"
  root "pages#home"
end
