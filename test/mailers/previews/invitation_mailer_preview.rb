# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class InvitationMailerPreview < ActionMailer::Preview
  def invitation_mail_preview
    InvitationMailer.invitation_email(Invitation.first)
  end
end

