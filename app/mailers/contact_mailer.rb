class ContactMailer < ApplicationMailer
    def new_contact_email
        @contact = params[:contact]

        mail(to: [@contact[:send_to_one], @contact[:send_to_two]], subject: @contact[:subject])
    end
end
