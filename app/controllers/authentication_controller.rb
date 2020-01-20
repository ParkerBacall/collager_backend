require 'jwt'

class AuthenticationController < ApplicationController
    def login
        user = User.find_by(username: params[:user][:username])

        if (!user)
            render status: :unauthorized
        else
            if user.authenticate(params[:user][:password])
                secret_key = Rails.application.secrets.secret_key_base[0]
                token = JWT.encode(user, secret_key)

                render json: {token: token, user: user} 
            else
                render status: :unauthorized
            end
        end 
    end
end
