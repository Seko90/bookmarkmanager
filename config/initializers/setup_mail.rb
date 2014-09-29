ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railscasts.com",
  :user_name            => "serkan.altin90@gmail.com",
  :password             => "boyindahood12346",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
