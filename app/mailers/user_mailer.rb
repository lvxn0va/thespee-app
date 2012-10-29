class UserMailer < ActionMailer::Base
  default from: "admin@thespee.info"
  
  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end
end
