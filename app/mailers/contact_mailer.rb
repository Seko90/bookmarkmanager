class ContactMailer < ActionMailer::Base
  default :from => "serkan.altin90@gmail.com"
  
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end
