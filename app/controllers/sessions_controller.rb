class SessionsController < ApplicationController
    def new

    end

    def create
        if auth_hash = request.env["omniauth.auth"]
            oauth_email = request.env["omniauth.auth"]["info"]["email"]
            if user = User.find_by(:email => oauth_email)
                session[:user_id] = user.id    
                redirect_to user_path(user)
            else
                user = User.new(:email => oauth_email, :password => SecureRandom.hex, :username => oauth_email)
                if user.save
                    session[:user_id] = user.id 
                    redirect_to user_path(user)
                else
                    flash.now[:danger] = "You login via Github was not successful. Please sign up to use Smartdesk."
                    render 'new'
                end
            end     

        else
            user = User.find_by(email: params[:session][:email].downcase)
            if user && user.authenticate(params[:session][:password])
                session[:user_id] = user.id
                flash[:success] = "You are now logged in"
                redirect_to user_path(user)
            else
                flash.now[:danger] = "You login was not successful. Please try again or sign up to use Smartdesk."
            render 'new'
            end
        end
    end        

    def destroy
        session[:user_id] = nil
        flash[:success] = "You have successfully logged out"
        redirect_to root_path
    end

    
end