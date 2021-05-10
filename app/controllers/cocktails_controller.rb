class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all.order("created_at DESC")
    @q = Cocktail.ransack(params[:q])
    @cocktails = @q.result(distinct: true)
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

  def show
    @cocktail = Cocktail.find(params[:id])
    @comment = Comment.new
    @comments = @cocktail.comments.includes(:user)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
    unless @cocktail.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.destroy
      redirect_to root_path
    end
  end

  def cocktail_params
    params.require(:cocktail).permit(:cocktail_name, :glass_id, :base_alcohol_id, :taste_id, :degree_id, :cocktail_recipe, :image).merge(user_id: current_user.id)
  end
end