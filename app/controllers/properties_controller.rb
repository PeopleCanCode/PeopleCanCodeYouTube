class PropertiesController < ApplicationController

  def index
    render plain: "I'm an index action"
  end

  def show
    render plain: "I'm an show action ID: #{params[:id]}"
  end

  def new
    render plain: "I'm an new action"
  end

  def create
    render plain: "I'm an create action"
  end

  def edit
    render plain: "I'm an edit action ID: #{params[:id]}"
  end

  def update
    render plain: "I'm an update action ID: #{params[:id]}"
  end

  def destroy
    render plain: "I'm an destroy action ID: #{params[:id]}"
  end

end
