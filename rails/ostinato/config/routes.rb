Rails.application.routes.draw do
  devise_for :users, path: 'u'
  resources :users
  get "/pages/:page" => "pages#show"
  root "pages#home"
end
