Rails.application.routes.draw do
  resources :books
  mount Happylife::Engine => "/happylife"
end
