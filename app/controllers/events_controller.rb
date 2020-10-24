class EventsController < ApplicationController
  def index
    @event = Event.all
    @user = User.find(session[:user_id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
  end
end
