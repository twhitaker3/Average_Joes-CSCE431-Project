class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(params[:invitation])
    @invitation.sender = current_admin
    if @invitation.save
      #if logged_in?
      InvitationMailer.invitation_email(@invitation).deliver
      flash[:notice] = "Thank you, invitation sent."
      redirect_to performance_requests_url
      #else
      #flash[:notice] = "Thank you, we will notify when we are ready."
      #redirect_to root_url
      #end
    else
      render :action => 'new'
    end
end
end
