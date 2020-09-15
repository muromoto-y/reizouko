Rails.application.routes.draw do
  devise_for :users
  root to: "cookings#index"
  resources :cookings do
   collection do
     get 'search'
   end
  end
end
