class MessageMailer < ApplicationMailer
    def newMessage
        @data = params[:message]
        mail(to: ENV['SMTP_DEF_TO'], subject: "Message from your gitpage!")
    end
end
