class ApplicationController < ActionController::API
private
    def current_user
        User.first #returning first user for test purposes
                #will update with authenticated user
    end

    def is_logged_in?
        !!current_user
    end
end
