class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[edit update]

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
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
  end

  def destroy
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

end
