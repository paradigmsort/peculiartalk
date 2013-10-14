class SessionsController < ApplicationController
    def new
    end
    def create
        user = User.find_by_name(params[:session][:name])
        if user and user.authenticate(params[:session][:password])
            sign_in user
            redirect_to user
        else
            flash.now[:error] = "Try again!"
            render 'new'
        end
    end
end
