# Router

```ruby
Rails.application.routes.draw do

    resources :properties

    get 'properties'             => 'properties#index',   as: 'properties'    # http://localhost:3000/properties
    get 'properties/:id'         => 'properties#show',    as: 'resource'      # http://localhost:3000/properties/123
    get 'properties/new'         => 'properties#new',     as: 'new_resource'  # http://localhost:3000/properties/new
    get 'properties/:id/edit'    => 'properties#edit',    as: 'edit_resource' # http://localhost:3000/properties/123/edit

    post    'properties'         => 'properties#create'   # http://localhost:3000/properties
    put     'properties/:id'     => 'properties#update'   # http://localhost:3000/properties/123
    patch   'properties/:id'     => 'properties#update'   # http://localhost:3000/properties/123
    delete  'properties/:id'     => 'properties#destroy'  # http://localhost:3000/properties/123

end
```

1. Set the root path
2. Parameters in order from left to right
3. as: to create path
4. Use [Postman](https://www.getpostman.com/) to test the routes
5. Comment out protect_from_forgery with: :exception if you want to submit post/put/delete actions


