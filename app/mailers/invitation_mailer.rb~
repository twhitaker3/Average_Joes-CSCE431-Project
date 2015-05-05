class InvitationMailer < ActionMailer::Base
  default from: "from@example.com"

  def invitation_email(invitation)
    @invitation = invitation
    @url = 'http://wranglers-portal.herokuapp.com/admins/sign_in'
    mail(to: @invitation.recipient_email, subject: 'Invitation')
  end

end
