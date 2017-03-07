class PropertiesController < ApplicationController
  def index
    @property = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(allowed_params)

    if @property.save
      redirect_to properties_path
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
    params.require(:property).permit(:name, :description)
  end
end
