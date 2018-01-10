class Api::SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:username] )
        if user && user.authenticate(params[:password])
          render json: {token: Auth.createToken(user)}
        else
          render json: {errors: "username or password wrong"}, status: 500
        end
      end
    
end
