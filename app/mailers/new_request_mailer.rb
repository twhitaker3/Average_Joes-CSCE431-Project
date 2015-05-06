class NewRequestMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_request_email()
    @subject = "New Performance Request"
    @url = 'https://wranglers-portal.herokuapp.com/performance_requests'
    
    # Sending a test email for now, need to figure out how to send to all admins
    Admin.all.each { |admin| 
      mail(to: admin.email, subject: @subject)
    }
  end
end

