Rails.application.routes.draw do

  resources :produtos do 
    resources :skus do
      resources :disponibilidades
    end
  end

  # resources :produtos, shallow: true do 
  #   # end

  # resources :skus do
  #   resources :disponibilidades
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #http://weblog.jamisbuck.org/2007/2/5/nesting-resources
end
