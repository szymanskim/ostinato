Rails.application.routes.draw do
  devise_for :users, path: 'u'
  resources :users
  resources :topics, except: :show do
    resources :posts
  end
  resources :file_resources, only: [:index, :new, :create, :destroy]
  get "/pages/:page" => "pages#show"
  root "pages#home"
end
