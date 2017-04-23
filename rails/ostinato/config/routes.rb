Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
  get "/:pages/:page" => "pages#login"
  root "pages#login", page: "login"
end
