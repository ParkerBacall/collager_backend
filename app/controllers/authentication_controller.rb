require 'jwt'

class AuthenticationController < ApplicationController
    def login 
        username = params[:user][:username]
        password = params[:user][:password]

        @user = User.find_by username: username
        if !@user 
            render status: :unauthorized
        else
            if !@user.authenticate password 
                render status: :unauthorized
            else
                secret = ENV['SECRET_KEY_BASE']
                token = JWT.encode({
                user_id: @user.id
                },secret) 
                render json: {token: token, user: @user.id}
            end
         end
        end
    end

