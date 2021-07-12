class ContactMailer < ApplicationMailer
    def new_contact_email
        @contact = params[:contact]

        mail(to: '<alfredogabriel.sousaoliveira@gmail.com>', subject: @contact[:subject])
    end
end
