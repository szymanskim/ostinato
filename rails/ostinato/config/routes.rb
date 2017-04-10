Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pl/ do
    root to: 'examples#index'
    resources :examples
  end
end
