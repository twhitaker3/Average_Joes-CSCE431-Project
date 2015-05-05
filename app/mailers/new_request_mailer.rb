class NewRequestMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_request_email(admin)
    @subject = "New Performance Request"
    @admin = admin
    
    # Sending a test email for now, need to figure out how to send to all admins
    mail(to: "ballew_4@tamu.edu", subject: @subject)
  end
end

