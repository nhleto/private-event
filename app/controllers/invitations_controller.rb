class InvitationsController < ApplicationController
  def new
    @invitation = current_user.invitations.new
  end

  def create
    @invitation = current_user.invitations.new(invitaton_params)
    @invitation.save
    respond_with(@invitation)
  end

  private

  def invitaton_params
    params.require(:invitation).permit(:event_id, :user_id)
  end
end
