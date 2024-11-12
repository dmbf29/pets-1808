Rails.application.routes.draw do
  # CRUD
  # Read all the pets
  # Read one of the pets
  # Add a pet to the lost and found
  # Update a pet on the lost and found
  # Remove a pet
  # verb '/path', to: 'controller#action', as: :prefix
  get '/pets', to: 'pets#index', as: :pets

  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'

  get '/pets/:id', to: 'pets#show', as: :pet

  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'

  delete '/pets/:id', to: 'pets#destroy'
end
