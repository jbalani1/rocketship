# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/send_contact_email
  def send_contact_email
    Notifier.send_contact_email
  end

end
