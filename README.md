# MVC

Generate models:


```bash
    $ rails generate model Property name:string description:text type:string
```


```bash
    $ rake db:migrate

    # or

    $ rails db:migrate
```


```bash
    $ rails generate controller properties
```


```ruby
    Rails.application.routes.draw do
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

      root 'properties#index'

      resources :properties

    end
```


```ruby
    class Property < ApplicationRecord

        def index
        end

        def show
        end

        def new
        end

        def create
        end

        def edit
        end

        def update
        end

        def destroy
        end

    end
```


Create views (by hand, we will use generator next time)