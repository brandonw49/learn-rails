class UserMailer < ApplicationMailer
  default from: "do-not-reply@example.com"
  default to: "brandonw49@gmail.com"

  def contact_email(contact)
    @contact = contact
    #to_address = ENV['OWNER_EMAIL']
    to_address = "brandonw49@gmail.com"
    mail(to: to_address, from: @contact.email, :subject => "Website Contact")
  end
end
