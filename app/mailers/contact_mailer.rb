class ContactMailer < ApplicationMailer
  default to: 'dimi972@yahoo.fr'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Contact Form Message')
  end
end
