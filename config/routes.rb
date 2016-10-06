Rails.application.routes.draw do
  get 'sku_api/index'

  post 'sku_api/create'

  get 'sku_api/show'

  put 'sku_api/update'

  delete 'sku_api/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
