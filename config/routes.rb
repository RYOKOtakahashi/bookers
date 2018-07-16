Rails.application.routes.draw do
  resources :blogs

  # root "コントローラ#アクション"
  root "blogs#index"
  # root "blogs#show"
  # root "blogs#new"
  # root "blogs#create"
  # root "blogs#edit"
  # root "blogs#update"
  # root "blogs#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
