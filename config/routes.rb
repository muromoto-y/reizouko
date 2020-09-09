Rails.application.routes.draw do
  devise_for :users
  root to: "cookings#index"
  resources :cookings
  # collection do
  #   get 'search'
  # end
end
