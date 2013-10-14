class SessionsController < ApplicationController
    def new
    end
    def create
        user = User.find_by_name(params[:session][:name])
        if user and user.authenticate(params[:session][:password])
            flash[:success] = "Signed in!"
            render 'new'
        else
            flash[:error] = "Try again!"
            render 'new'
        end
    end
end
