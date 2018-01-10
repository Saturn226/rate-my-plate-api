require 'Auth'
class Api::SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:username] )
        if user && user.authenticate(params[:password])
          render json: {token: Auth.create_token({username: params[:username], first_name: params[:first_name], last_name: params[:last_name]})}
        else
          render json: {errors: "username or password wrong"}, status: 500
        end
      end
    
end
