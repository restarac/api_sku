Rails.application.routes.draw do

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        
        resources :produtos do 
          resources :skus do
            resources :disponibilidades
          end
        end

      end #namespace ending
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
