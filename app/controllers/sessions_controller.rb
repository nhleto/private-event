class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back, #{current_user.name}!"
      redirect_to root_path
    else
      flash[:alert] = 'Sign in failure...'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
