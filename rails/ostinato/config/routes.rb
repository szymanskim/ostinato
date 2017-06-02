Rails.application.routes.draw do
  devise_for :users, path: 'u'
  resources :users
  resources :topics, except: :show do
    resources :posts
  end
  get "/pages/:page" => "pages#show"
  root "pages#home"
end
