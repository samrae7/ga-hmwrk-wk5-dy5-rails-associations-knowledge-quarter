class UsersController < ApplicationController

  def index
    @users= User.all.order(:surname)
  end

  def new
    @user = User.new(user_params)
    # does this need to be an instance variable?
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to users
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user
    else
      render :edit
    end
  end

  def delete
    user = User.find(params[:id])
    user.destroy
    redirect_to users
  end


private

  def user_params
    params.require(:user).permit(:first_name, :surname, :username, :email)
  end


end
