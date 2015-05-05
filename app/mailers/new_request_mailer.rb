class NewRequestMailer < Devise::Mailer
  helper :application
  default template_path: 'devise/mailer'

  default to: Proc.new { Admin.pluck(:email) },
          from: "wranglers.aggie@gmail.com"

  def new_request_email()
    @subject = "New Performance Request"
    @url = 'https://wranglers-portal.herokuapp.com/performance_requests'
    
    # Sending a test email for now, need to figure out how to send to all admins
    mail(to: "wranglers.aggie@gmail.com", subject: @subject)
  end
end

