class EventsController < ApplicationController
  def index
    @event = Event.all.order('created_at DESC')
    @user = User.find(session[:user_id])
  end

  def show
    @event = Event.find(params[:id])
    @user = User.find(session[:user_id])
    @event.invitations.build
  end

  def new
    @event = Event.new
    @user = User.find(session[:user_id])
    @users = User.all
  end

  def create
    @event = current_user.created_events.build(event_params)
    @user = User.find(session[:user_id])
    if @event.save
      flash[:notice] = 'New Event Created!'
      redirect_to user_events_path
    else
      flash[:alert] = 'Failed to Create Event...'
      render 'new'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    return unless @event.destroy

    flash[:notice] = 'Event was successfully destroyed'
    redirect_to user_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date)
  end
end
