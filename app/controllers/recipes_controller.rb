class RecipesController < ApplicationController

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
