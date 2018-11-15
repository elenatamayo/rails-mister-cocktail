class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails=Cocktail.create(coctail_params)
    if @cocktail.save

    redirect_to cocktails_path
  end

  private
  def cocktail params
    param.require(:cocktail).permit(:name)
  end

end
