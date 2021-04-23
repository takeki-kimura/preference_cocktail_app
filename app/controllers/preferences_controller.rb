class PreferencesController < ApplicationController
  def index
  end

  def search
    @coktails = Coktail.search(params[:seach])
  end
end
