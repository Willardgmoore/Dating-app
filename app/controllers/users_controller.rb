class UsersController < ApplicationController
  
  def profile
  end

  def index
  	@users = User.all#where(gender: true)#TODO where gender != current user
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  end

  def destroy
  	@user = User.find(params)
  	@user.destroy
  	redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :age)
  end
end
