Rails.application.routes.draw do
  get 'welcome/index'
  root 'students#index'
  get 'students/new'
  post 'students/create'
  get 'students/show/:id' ,to: 'students#show'
  get 'students/detroy/:id' ,to: 'students#destroy'
  get 'students/edit/:id' ,to: 'students#edit'
  patch 'students/update' ,to: 'students#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
