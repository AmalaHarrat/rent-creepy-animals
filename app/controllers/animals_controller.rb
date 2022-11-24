class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[edit update destroy]

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
    @animal.user = current_user
    if @animal.save
      redirect_to my_animals_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    redirect_to my_animals_path
  end

  def destroy
    @animal.destroy
    redirect_to my_animals_path, status: :see_other
  end

  def my_animals
    # index
    # indes des annimaux de mon user crée
    @myanimals = current_user.animals
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :category, :description, :fear, :price)
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end
end
