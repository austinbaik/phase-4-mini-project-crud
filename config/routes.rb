Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]
  # resources :spice, only: [:update]
  resources :shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end




# spices GET    /spices(.:format)     spices#index
#        POST   /spices(.:format)     spices#create
#  spice GET    /spices/:id(.:format) spices#show
#        PATCH  /spices/:id(.:format) spices#update
#        PUT    /spices/:id(.:format) spices#update
#        DELETE /spices/:id(.:format) spices#destroy
