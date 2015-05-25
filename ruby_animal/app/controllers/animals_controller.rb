class AnimalsController < ApplicationController

  def index
    @animals = Animal.all#show all the animals
  end

  def show
    @animal = Animal.find(params[:id])
  end

   def new
      @animal = Animal.new # hack
   end

   def create
      @animal = Animal.new(animal_params)
      if @animal.save
        redirect_to animal_path(@animal)
      else
        render 'new', status: 400
   end
end

private

   def animal_params
     params.require(:animal).permit(:name, :life_story, :image_url)
   end
end
