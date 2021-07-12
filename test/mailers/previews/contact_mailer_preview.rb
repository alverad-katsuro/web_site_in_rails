# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    def new_contact_email
        contact = Contact.new(name: "Joe", email: "amgabriel1", send_to: "jeronimo", subject: "Contato Inicial", message: "tesafasfasçfksalçdksaçldksaçldkaçslkd")

        ContactMailer.with(contact: contact).new_contact_email
    end
end
