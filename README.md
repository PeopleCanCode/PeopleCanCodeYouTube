# MVC

Generate models:


```bash
    $ rails generate model Property name:string description:text type:string !!!!!!!! not type
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
        @recipes = Recipe.all
      end

      def show
      end

      def new
        @recipe = Recipe.new
      end

      def create
        @recipe = Recipe.new(allowed_params)

        if @recipe.save
          redirect_to recipes_path
        else
          render 'new'
        end
      end

      def edit
      end

      def update
      end

      def destroy
      end

      private

      def allowed_params
        params.require(:recipe).permit(:name, :description)
      end

    end
```


Create views (by hand, we will use generator next time)