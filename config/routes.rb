Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  get '/shelters/:id', to: 'shelters#show'
  post '/shelters', to: 'shelters#create'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  get '/shelters/:id/delete', to: 'shelters#destroy'
  get '/pets', to: 'pets#index'
  get '/shelters/:id/pets', to: 'pets#show_pets'
  get '/pets/:id', to: 'pets#show'
  get '/shelters/:id/pets/new', to: 'pets#new'
  post '/shelters/:id/pets', to: 'pets#create'
  get '/pets/:id/edit', to: 'pets#edit'
  patch '/pets/:id', to: 'pets#update'
  get '/pets/:id/delete', to: 'pets#destroy'
  get 'shelters/:id/pets/:id', to: 'pets#show'
  get "/:id/pets", to: 'pets#show_pets'
  get '/shelters/:id/review', to: 'reviews#new'
  post '/shelters/:id', to: 'reviews#create'
  get '/shelters/:id/:id/edit', to: 'reviews#edit'
  patch '/shelters/:id/:id', to: 'reviews#update'
  get '/shelters/:id/:id/delete', to: 'reviews#destroy'
  patch '/pets/:id/favorite', to: 'favorites#update'
  get '/favorites', to: 'favorites#index'
  patch '/favorites/:id', to: 'favorites#destroy'
  get '/favorites/:id', to: 'favorites#remove'
  patch '/favorites', to: 'favorites#remove_all'
  get '/adoptions/new', to: 'adoptions#new'
  post '/adoptions', to: 'adoptions#create'
  get '/adoptions/:id', to: 'adoptions#show'
  get '/pets/:id/applications', to: 'adoptions#index'
  get '/pets/:id/approve', to: 'pets#approve', as: "approve"
  get '/pets/:id/revoke', to: 'pets#revoke', as: "revoke"
#   resources :pets do
#     member do
#       get :approve
#     end
#   end
end
