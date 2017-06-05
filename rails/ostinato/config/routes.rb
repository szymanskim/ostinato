Rails.application.routes.draw do
  devise_for :users, path: 'u'
  resources :users
  resources :topics, except: :show do
    resources :posts
  end
  resources :file_resources, only: %i[index new create destroy]
  get "/file_resources/download" => "file_resources#download_file"
  get "/pages/:page" => "pages#show"
  root "pages#home"
end
