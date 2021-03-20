class BaseController < ApplicationController
    include Response

    def welcome
        json_response(welcome_params)
    end

    def sendMessage
        MessageMailer.with(message: message_params).newMessage.deliver_later
        json_response(message: "Mail sent")
    end

    private
    
    def message_params
        params.permit(:message)
    end

    def welcome_params
        params.permit(:name)
    end
end
