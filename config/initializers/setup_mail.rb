ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "suncongs.info",  
  :user_name            => "e.notifier.1@gmail.com",  
  :password             => "com.580.wad",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
