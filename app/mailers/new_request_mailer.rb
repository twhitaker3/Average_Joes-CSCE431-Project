class NewRequestMailer < Devise::Mailer
  helper :application
  default template_path: 'devise/mailer'

  default from: "from@example.com"

  def new_request_email(admin)
    @subject = "New Performance Request"
    @admin = admin
    @url = 'https://wranglers-portal.herokuapp.com/performance_requests'
    
    # Sending a test email for now, need to figure out how to send to all admins
    mail(to: @admin.email, subject: @subject)
  end
end

