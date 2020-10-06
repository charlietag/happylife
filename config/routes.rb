Happylife::Engine.routes.draw do
  resources :books do
    resources :comments
  end

  root to: "books#index"
end
