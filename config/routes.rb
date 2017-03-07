Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'properties#index'

  # resources :properties

  get 'properties'             => 'properties#index',   as: 'properties'    # http://localhost:3000/properties            properties_path
  get 'properties/:id'         => 'properties#show',    as: 'property'      # http://localhost:3000/properties/123        property_path(ID)
  get 'properties/new'         => 'properties#new',     as: 'new_property'  # http://localhost:3000/properties/new        new_property_path
  get 'properties/:id/edit'    => 'properties#edit',    as: 'edit_property' # http://localhost:3000/properties/123/edit   edit_property_path(ID)

  post    'properties'         => 'properties#create'   # http://localhost:3000/properties
  put     'properties/:id'     => 'properties#update'   # http://localhost:3000/properties/123
  patch   'properties/:id'     => 'properties#update'   # http://localhost:3000/properties/123
  delete  'properties/:id'     => 'properties#destroy'  # http://localhost:3000/properties/123


  get 'properties-custom/:id/(:filter)' => 'properties#show'


  scope :admin do
    get 'properties'           => 'properties#index'
  end

  resources :properties do
    member do
      get 'feature'
    end
  end

end
