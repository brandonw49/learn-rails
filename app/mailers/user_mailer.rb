class UserMailer < ApplicationMailer
  default from: "do-not-reply@example.com"
  default to: "brandonw49@gmail.com"

  def contact_email(contact)
    @contact = contact
    to_address = ENV['OWNER_EMAIL']
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
