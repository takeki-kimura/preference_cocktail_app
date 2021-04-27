class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def cocktail_params
    params.require(:cocktail).permit(:cocktail_name, :glass_id, :base_alcohol_id, :taste_id, :degree_id, :cocktail_recipe, :image).merge(user_id: current_user.id)
  end
end