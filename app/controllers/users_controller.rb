class UsersController < ApplicationController
  def show
    @user =  User.find(params[:id])
    @nickname = current_user.nickname
    @cocktails = @user.cocktails
  end
end
