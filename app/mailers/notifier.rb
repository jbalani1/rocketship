class Notifier < ApplicationMailer

  default from: 'contact@rocketship.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_contact_email.subject
  #
  def send_contact_email(contact)
    subject = 'New contact on Rocketship'
    @content = "#{contact.first_name} #{contact.last_name}, Email: #{contact.email}. Sent information at: #{contact.created_at}"

    mail to: "bilal.masqood528@gmail.com", subject: subject
  end
end
