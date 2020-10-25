class EventsController < ApplicationController
  def index
    @event = Event.all.order('created_at DESC')
    @user = User.find(session[:user_id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @user = User.find(session[:user_id])
  end

  def create
    @event = Event.new
    if @event.save
      flash[:notice] = 'New Event Created!'
    else
      flash[:alert] = 'Failed to Create Event...'
      render 'new'
    end
  end

  private

  def event_params
    params.require(:user).permit(:name, :description, :date)
  end

end
