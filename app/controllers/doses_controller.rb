class DosesController < ApplicationController
  # def index
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.where(cocktail_id: params[:cocktail_id])
  # end

  # def show
  #   @cocktail_doses = Dose.where(cocktail_id: params[:id])
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @cocktail
    else
      render 'doses/new'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
