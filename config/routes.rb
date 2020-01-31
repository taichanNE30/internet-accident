Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :accidents, only: %i[index create]
  root "accidents#index"
  match '*path' => redirect('/'), via: :get
end
