class ScmailMailer < ActionMailer::Base
  def scheduled_email(scmail)  
    @recipient = scmail.recipient
    mail(:to => scmail.sendto, :subject => "Happy B-day!!", :from => "c_sun@qq.com")  
  end  
end
