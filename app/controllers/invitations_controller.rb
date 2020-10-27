class InvitationsController < ApplicationController
  def new
    @invitation = current_user.invitations.new
  end

  def create
    @invitation = Invitation.build(invitaton_params)
    if @invitation.save
      flash[:notice] = 'Invite Sent!'
    end
  end

  private

  def invitaton_params
    params.require(:invitation).permit(:name)
  end
end
