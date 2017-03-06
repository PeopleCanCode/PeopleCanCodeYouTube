# MVC

Generate models:


```bash
    $ rails generate model Recipe name:string description:text
```


```bash
    $ rake db:migrate

    # or

    $ rails db:migrate
```


```bash
    $ rails generate controller recipes
```


```ruby
    Rails.application.routes.draw do
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

      root 'recipes#index'

      resources :recipes

    end
```


```ruby
    class Recipe < ApplicationRecord

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