class UsersController < ApplicationController
  # before_filter :set_current_user  #bad practice. Should have been done in the application controller.

  def profile
    @user = current_user # Replace current_user with something???!
  end

  def index
    @users = User.all#where(gender: true)#TODO where gender != current user
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path # Was root path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to users_path
    else 
      render :edit
    end
  end

  def destroy
    @user = User.find(params)
    @user.destroy
    redirect_to users_path
  end

  private

  # def set_current_user
  #   User.current = current_user
  # end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :city, :state, :vehicle_type)
  end
end
