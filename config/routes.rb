Rails.application.routes.draw do
  root 'list#welcome'

  get 'list_item/list'
  get 'list_item/show'
  get 'list_item/new'
  post 'list_item/create'
  get 'list_item/delete'

  get 'list/list'
  get 'list/show'
  get 'list/new'
  post 'list/create'
  get 'list/delete'

  get 'menu_item/list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
