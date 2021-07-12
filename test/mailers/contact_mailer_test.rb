require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  test "new order email" do
    # Set up an order based on the fixture
    order = contact(:one)

    # Set up an email using the order contents
    email = ContactMailer.with(order: order).new_order_email

    # Check if the email is sent
    assert_emails 1 do
      email.deliver_now
    end

    # Check the contents are correct
    assert_equal ['alfredogabriel.sousaoliveira@gmail.com'], email.from
    assert_equal ['alfredogabriel.sousaoliveira@gmail.com'], email.to
    assert_equal "You got a new order!", email.subject
    assert_match order.name, email.html_part.body.encoded
    assert_match order.name, email.text_part.body.encoded
    assert_match order.email, email.html_part.body.encoded
    assert_match order.email, email.text_part.body.encoded
    assert_match order.send_to, email.html_part.body.encoded
    assert_match order.send_to, email.text_part.body.encoded
    assert_match order.subject, email.html_part.body.encoded
    assert_match order.subject, email.text_part.body.encoded
    assert_match order.message, email.html_part.body.encoded
    assert_match order.message, email.text_part.body.encoded
  end
end
