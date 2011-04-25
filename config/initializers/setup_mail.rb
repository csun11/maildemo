ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "suncongs.info",  
  :user_name            => "flamingsuns@gmail.com",  
  :password             => "flaming.371212",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
