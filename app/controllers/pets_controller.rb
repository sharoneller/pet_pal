class PetsController < ApplicationController
	def index
		@pets = Pet.all
	end
	def show
		@pet = Pet.find(params[:id])
	end
	def new
		@pet  = Pet.new
	end
	def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet, notice: "Pet successfully created!"
    else
      render :new
    end
  end
  def edit
    @pet = Pet.find(params[:id])
  end
   def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Pet successfully updated!"
    else
      render :edit
    end
  end
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_url, alert: "Pet successfully deleted!"
  end
end

private

  def pet_params
    params.require(:pet).permit(:name, :description, :breed, :image_file_name)
  end
