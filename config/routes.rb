Rails.application.routes.draw do
  get 'counter/index'
  get "/", to: "counter#index"
  root "counter#index"

  resources :count

  post "increase" => "counter#increase"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
