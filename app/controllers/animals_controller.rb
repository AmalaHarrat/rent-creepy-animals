class AnimalsController < ApplicationController
  def index
   @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animal_path(@animal) 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def animal_params
    params.require(:animal).permit(:name, :category, :description, :fear, :price)
  end
end
