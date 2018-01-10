class ApplicationController < ActionController::API
   
private
    def current_user
        user = User.first #returning first user for test purposes
        user
    end
end
