require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "send_contact_email" do
    mail = Notifier.send_contact_email
    assert_equal "Send contact email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
