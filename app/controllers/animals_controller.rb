class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[edit destroy]

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
    @animal.destroy
    redirect_to animals_path, status: :see_other
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

end
