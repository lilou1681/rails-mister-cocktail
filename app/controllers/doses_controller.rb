class DosesController < ApplicationController

  def new
    @cocktail = cocktails.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @ingredient = Ingredient.new(params[:id])
    if @ingredient.save
      redirect_to
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
