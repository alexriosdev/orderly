class AdminsController < ApplicationController

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find_by(id: params[:id])
  end

  # def new
  #   @user.User.new
  # end

  # def create
  #   @user = User.new(params[:user])
  #   if @user.save
  #     flash[:notice] = "Welcome new user!"
  #     flash[:color]= "valid"
  #   else
  #     flash[:notice] = "Invalid, please try again."
  #     flash[:color] = "invalid"
  #   end
  #   render "new"
  # end 

end
