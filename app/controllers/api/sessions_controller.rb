require 'pry'
require 'Auth'
class Api::SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:user][:username] ) 
        if user && user.authenticate(params[:user][:password])
          render json: {token: Auth.create_token({username: params[:user][:username], first_name: params[:user][:first_name], last_name: params[:user][:last_name]}), user: user}
        else
          render json: {errors: "username or password wrong"}, status: 500
        end
      end
    
end
