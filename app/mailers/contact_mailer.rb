class ContactMailer < ActionMailer::Base
  default :to => "artfikan@gmail.com"
  
  def send_email(contact)
    @message = contact.message
    mail(:from => "#{contact.name} <#{contact.email}>", :subject => "Site contact: #{contact.subject}")
  end
end
