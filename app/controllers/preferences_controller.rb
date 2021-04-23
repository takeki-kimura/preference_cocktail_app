class PreferencesController < ApplicationController
  before_action :search_cocktail, only: [:index, :search]

  def index
  end

  def new
  end

  def create
  end

  def search
    @results = @p.result.includes(:cocktail)
  end

  private

  def search_cocktail
    @p = Cocktail.ransack(params[:q])
  end

  def cocktail_params
    params.require(:coktail).permit(:cocktail_name, :glass_id, :base_alcohol_id, :taste_id, :degree_id, :cocktail_recipe, :image)
  end
end