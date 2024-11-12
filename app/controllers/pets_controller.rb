class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  # '/pets/1'
  def show
    @pet = Pet.find(params[:id])
  end

  def new
    # just for the form
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new', status: :unprocessable_entity # 422
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit', status: :unprocessable_entity # 422
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other # redirect
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :location, :species, :found_on)
  end
end
