class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.find(current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def show
    if @user.nil?
      redirect_to users_path
    else
      @user = User.find(current_user.id)
      redirect_to root_path
    end

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
