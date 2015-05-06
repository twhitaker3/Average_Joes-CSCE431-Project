class NewRequestMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_request_email()
    @subject = "New Performance Request"
    @url = 'https://wranglers-portal.herokuapp.com/performance_requests'
    
    # Senmd email to all admins for site
    Admin.all.each { |admin| 
      mail(to: admin.email, subject: @subject).deliver
    }
  end
end

