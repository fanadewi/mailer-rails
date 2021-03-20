class BaseController < ApplicationController
    include Response

    def welcome
        json_response(welcome_params)
    end

    def welcome_params
        params.permit(:name)
    end
end
